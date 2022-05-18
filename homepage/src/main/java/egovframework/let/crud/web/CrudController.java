package egovframework.let.crud.web;

import java.util.List;
import java.util.Map;

import egovframework.com.cmm.ComDefaultVO;
import egovframework.let.cop.bbs.service.BoardVO;
import egovframework.let.cop.bbs.service.EgovBBSManageService;

import egovframework.let.crud.service.CrudService;
import egovframework.let.crud.service.CrudVO;
import egovframework.let.utl.fcc.service.EgovStringUtil;
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


@Controller
public class CrudController {

	
	@Resource(name = "crudService")
    private CrudService crudService;
	        //객체명           변수명
	
	
	//임시데이터 등록/수정
	@RequestMapping(value = "/crud/crudRegist.do")       //객체     변수
	public String crudRegist(@ModelAttribute("searchVO") CrudVO crudVO,
		HttpServletRequest request, ModelMap model) throws Exception{
		
		CrudVO result=new CrudVO();
		if(!EgovStringUtil.isEmpty(crudVO.getCrudId())) {
			result = crudService.selectCrud(crudVO);
		}
		/*등록이 있으면 수정으로 변경하기위해 써준다.*/
	    model.addAttribute("result", result);
		
		return "crud/CrudRegist";
	}
	
	//CRUD 등록하기
	@RequestMapping(value = "/crud/insert.do")
	public String insert(@ModelAttribute("searchVO") CrudVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
		crudService.insertCrud(searchVO);
		return "forward:/crud/selectList.do";
	}
	
	//임시데이터 목록 가져오기
	@RequestMapping(value = "/crud/selectList.do")       //객체     변수
	public String selectList(@ModelAttribute("searchVO") CrudVO searchVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		/*List<EgovMap> resultList = tempService.selectTempList(searchVO);
		model.addAttribute("resultList", resultList);*/
		PaginationInfo paginationInfo = new PaginationInfo();
		
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());
		
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		int totCnt = crudService.selectCrudListCnt(searchVO);
		
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		List<EgovMap> resultList = crudService.selectCrudList(searchVO);
		model.addAttribute("resultList", resultList);
		
		return "crud/CrudSelectList";
	}
	
	//임시데이터 가져오기
	@RequestMapping(value = "/crud/select.do")
	public String select(@ModelAttribute("searchVO") CrudVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
		CrudVO result = crudService.selectCrud(searchVO);
		model.addAttribute("result", result);
		return "crud/CrudSelect";
	}
	
	//임시데이터 수정하기
	@RequestMapping(value = "/crud/update.do")
	public String update(@ModelAttribute("searchVO")CrudVO searchVO,
		 HttpServletRequest request, ModelMap model) throws Exception{
		
		crudService.updateCrud(searchVO);
		return "forward:/crud/selectList.do";
	}
	
	//임시데이터 삭제하기
	@RequestMapping(value = "/crud/delete.do")
	public String delete(@ModelAttribute("searchVO") CrudVO searchVO, 
			HttpServletRequest request, ModelMap model) throws Exception{
		
		crudService.deleteCrud(searchVO);
		return "forward:/crud/selectList.do";	
		
	}
	
	//JSTL
	@RequestMapping(value = "/crud/jstl.do")
	public String jstl(@ModelAttribute("searchVO") CrudVO searchVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		return "/crud/Jstl";
	}
	
	//JSTL IMPORT용
	@RequestMapping(value = "/crud/jstlImport.do")
	public String jstlImport(@ModelAttribute("searchVO") CrudVO searchVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		return "/crud/JstlImport";
	}
	
	
	

	/*
	//임시데이터 등록/수정
	@RequestMapping(value = "/temp/tempRegist.do")
	public String tempRegist(@ModelAttribute("searchVO") TempVO tempVO, HttpServletRequest request, ModelMap model) throws Exception{
		TempVO result = new TempVO();
		if(!EgovStringUtil.isEmpty(tempVO.getTempId())) {
			result = tempService.selectTemp(tempVO);
		}
		model.addAttribute("result", result);
		
		return "temp/TempRegist";
	}
	
	//임시데이터 등록하기
	@RequestMapping(value = "/temp/insert.do")
	public String insert(@ModelAttribute("searchVO") TempVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
		String tempId = tempService.insertTemp(searchVO);
		return "forward:/temp/selectList.do";
	}
	
	//임시데이터 목록 가져오기
	@RequestMapping(value = "/temp/selectList.do")
	public String selectList(@ModelAttribute("searchVO") TempVO searchVO,  HttpServletRequest request, ModelMap model) throws Exception{
		PaginationInfo paginationInfo = new PaginationInfo();

		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());

		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		List<EgovMap> resultList = tempService.selectTempList(searchVO);
		model.addAttribute("resultList", resultList);
		
		int totCnt = tempService.selectTempListCnt(searchVO);
		
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		return "temp/TempSelectList";
	}
	
	//임시데이터 수정하기
	@RequestMapping(value = "/temp/update.do")
	public String update(@ModelAttribute("searchVO") TempVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
		tempService.updateTemp(searchVO);
		return "forward:/temp/selectList.do";
	}
	
	//임시데이터 삭제하기
	@RequestMapping(value = "/temp/delete.do")
	public String delete(@ModelAttribute("searchVO") TempVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
		tempService.deleteTemp(searchVO);
		return "forward:/temp/selectList.do";
	}
	*/
}