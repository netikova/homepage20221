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
	
	
	
}
