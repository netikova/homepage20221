package egovframework.let.board.service.impl;

import egovframework.let.board.service.BoardService;
import egovframework.let.board.service.BoardVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

//imple을 쓰는 이유는 에러가 발생시 transaction(트랜잭션)을 이용해 복구(rollback)하기 위해서다.
@Service("boardService")
public class BoardServiceImpl extends EgovAbstractServiceImpl implements BoardService {
    /*
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertyService;
    */
    //이름은 보통 앞은 소문자
    @Resource(name="boardMapper")
	private BoardMapper boardMapper;
    //ID값을 가져오기 위해서 사용
    @Resource(name = "egovBoardIdGnrService")
    private EgovIdGnrService idgenService; 
    
    //게시물 목록 가져오기
    public List<EgovMap> selectBoardList(BoardVO vo) throws Exception{
    	return boardMapper.selectBoardList(vo);
    }
    
    //게시물 목록 수
    public int selectBoardListCnt(BoardVO vo) throws Exception{
    	return boardMapper.selectBoardListCnt(vo);
    }
    
    
    //게시물 등록
    @Override
    public String insertBoard(BoardVO vo) throws Exception{
    	String id = idgenService.getNextStringId();
    	vo.setBoardId(id);
    	boardMapper.insertBoard(vo);
    	
    	return id;
    }
    
    //게시물 상세정보
    //다수의 작업이 들어올 경우 에러 발생시 복구하는 구간
    @Override
    public BoardVO selectBoard(BoardVO vo) throws Exception{
    	//조회수 업
    	boardMapper.updateViewCnt(vo);
    	return boardMapper.selectBoard(vo);
    }
    
    //게시물 수정하기
    @Override
    public void updateBoard(BoardVO vo) throws Exception{
    	boardMapper.updateBoard(vo);
    }
    
    //게시물 삭제하기
    @Override
    public void deleteBoard(BoardVO vo) throws Exception{
    	boardMapper.deleteBoard(vo);
    }
	
	
	
}
