package egovframework.let.board2.web;

import java.util.List;
import java.util.Map;

import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.FileVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;


import egovframework.let.board2.service.BoardService2;
import egovframework.let.board2.service.BoardVO2;
import egovframework.let.utl.fcc.service.EgovStringUtil;
import egovframework.let.utl.fcc.service.FileMngUtil;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


@Controller
public class BoardController2 {

	
	@Resource(name = "boardService2")
    private BoardService2 boardService2;
	        //객체명           변수명	
	
	@Resource(name = "EgovFileMngService")
	private EgovFileMngService fileMngService;
	
	@Resource(name = "fileMngUtil")
	private FileMngUtil fileUtil;

	//Board 목록 가져오기
	@RequestMapping(value = "/board2/selectList.do")       //객체     변수
	public String selectList(@ModelAttribute("searchVO") BoardVO2 searchVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		//공지 게시글
		searchVO.setNoticeAt("Y"); 
		List<EgovMap> noticeResultList = boardService2.selectBoardList(searchVO);
		model.addAttribute("noticeResultList", noticeResultList);
		
		PaginationInfo paginationInfo = new PaginationInfo();		
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex()); //현재 페이지 번호
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit()-1);//한페이지당 게시되는 게시물 건수
		paginationInfo.setPageSize(searchVO.getPageSize());//페이지 리스트에 게시되는 페이지 건수
		
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());//페이지 리스트의 첫페이지 번호
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());//페이지 리스트의 마지막 페이지 번호
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		searchVO.setNoticeAt("N");
		List<EgovMap> resultList = boardService2.selectBoardList(searchVO);
		model.addAttribute("resultList", resultList);
		
		int totCnt = boardService2.selectBoardListCnt(searchVO);
		
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		LoginVO user = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		model.addAttribute("USER_INFO", user);
		
		return "board2/BoardSelectList";
	}
	
	//게시물 등록/수정
	@RequestMapping(value = "/board2/boardRegist.do")
	public String boardRegist(@ModelAttribute("searchVO") BoardVO2 BoardVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		if(user == null || user.getId() == null) {
			model.addAttribute("message", "로그인 후 사용가능합니다. ");
			return "forward:/board2/selectList.do";
		}else {
			model.addAttribute("USER_INFO", user);
		}
	
		BoardVO2 result = new BoardVO2();
		if(!EgovStringUtil.isEmpty(BoardVO.getBoardId())) {			
			result = boardService2.selectBoard(BoardVO);
			//본민 및 관리자만 허용
			if(!user.getId().equals(result.getFrstRegisterId()) && !"admin".equals(user.getId())) {
				model.addAttribute("message", "작성자 본인만 확인 가능합니다. ");
				return "forward:/board2/selectList.do";
			}			
		}
		model.addAttribute("result", result);
		request.getSession().removeAttribute("sessionBoard"); //글을 수정하거나 다시 등록할때 session을 지워야 다시 등록할수 있다.
		
		return "board2/BoardRegist";
	}
	
	//게시물 등록
	@RequestMapping(value = "/board2/insert.do")
	public String insert(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO2 searchVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		
		//이중 서브및 방지 체크 (sessionBoard에 값이 있으면 계속 리턴값을 실행한다.(새로고침을 눌렀을때)
		if(request.getSession().getAttribute("sessionBoard") != null) {
			return "forward:/board2/selectList.do";
		}
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();//사용자 정보 조회
		if(user == null || user.getId() == null) {
			model.addAttribute("message", "로그인 후 사용가능합니다.");
			return "forward:/board2/selectList.do";
		}
		
		List<FileVO> result = null;
		String atchFileId = "";
		
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		if(!files.isEmpty()) {
			result = fileUtil.parseFileInf(files, "BOARD_", 0, "", "board.fileStorePath");
			atchFileId = fileMngService.insertFileInfs(result);
		}
		searchVO.setAtchFileId(atchFileId);
		searchVO.setCreatIp(request.getRemoteAddr()); //작성자 기준의 Ip
		searchVO.setUserId(user.getId()); //유저Id		
		
		boardService2.insertBoard(searchVO);
		
		//이중 서브 및 방지
		request.getSession().setAttribute("sessionBoard", searchVO);
		return "forward:/board2/selectList.do";
		}
	
	//게시물 가져오기
	@RequestMapping(value = "/board2/select.do")
	public String select(@ModelAttribute("searchVO") BoardVO2 searchVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		model.addAttribute("USER_INFO", user);
		
		BoardVO2 result = boardService2.selectBoard(searchVO);
		//비밀 글 여부 체크
		if("Y".equals(result.getOthbcAt())) {
			//본인 및 관리자만 허용
			if(user == null || user.getId() == null ||
			     (!user.getId().equals(result.getFrstRegisterId()) &&
			    		 !"admin".equals(user.getId()))) {
				model.addAttribute("message", "작성자 본인만 확인 가능합니다.");
				return "forward:/board2/selectList.do";
			}
		}
		model.addAttribute("result", result);
		return "board2/BoardSelect";
	}
	
	//게시물 수정하기
	@RequestMapping(value = "/board2/update.do")
	public String update(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO2 searchVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		//이중 서브 및 방지
		if(request.getSession().getAttribute("sessionBoard") != null) {
			return "forward:/board2/selectList.do";
		}
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		if(user == null || user.getId() == null) {
			model.addAttribute("message", "로그인 후 사용가능합니다.");
			return "forward:/board2/selectList.do";
		}else if("admin".equals(user.getId())) {
			searchVO.setMngAt("Y");
		}
		
		String atchFileId = searchVO.getAtchFileId(); //첨부파일 아이디
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		if(!files.isEmpty()) { //첨부파일이 있을때만 실행
			if(EgovStringUtil.isEmpty(atchFileId)) {
				List<FileVO> result = fileUtil.parseFileInf(files, "BOARD_", 0, "", "board.fileStorePath");  //null, 저장경로
				atchFileId = fileMngService.insertFileInfs(result);
				searchVO.setAtchFileId(atchFileId);
			}else {
				FileVO fvo = new FileVO();
				fvo.setAtchFileId(atchFileId);
				int cnt = fileMngService.getMaxFileSN(fvo); //pk값을 구분하기 위한 SN값, cnt = 시리얼넘버
				List<FileVO> _result = fileUtil.parseFileInf(files, "BOARD_", cnt, atchFileId, "board.fileStorePath");
				fileMngService.updateFileInfs(_result);
			}
		}		
		
		searchVO.setUserId(user.getId());
		
		boardService2.updateBoard(searchVO);
		
		//이중 서브 및 방지
		request.getSession().setAttribute("sessionBoard", searchVO);
		return "forward:/board2/selectList.do";
	}
	
	//게시물 삭제하기
	@RequestMapping(value = "/board2/delete.do")
	public String delete(@ModelAttribute("searchVO") BoardVO2 searchVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		if(user == null || user.getId() == null) {
			model.addAttribute("message", "로그인 후 사용가능합니다.");
		}else if("admin".equals(user.getId())) {
			searchVO.setMngAt("Y");
		}
		
		searchVO.setUserId(user.getId());
		
		boardService2.deleteBoard(searchVO);
		
		return "forward:/board2/selectList.do";		
			
		}
	}

	
	
	
	
	
