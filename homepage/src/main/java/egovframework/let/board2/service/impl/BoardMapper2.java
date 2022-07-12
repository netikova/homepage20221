package egovframework.let.board2.service.impl;

import java.util.List;

import egovframework.let.board2.service.BoardVO2;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("boardMapper2")
public interface BoardMapper2 {
	
	//게시물 목록 가져오기
	List<EgovMap> selectBoardList(BoardVO2 vo) throws Exception;
	
	//게시물 목록 수
	int selectBoardListCnt(BoardVO2 vo) throws Exception;
	
	//게시물 등록
	void insertBoard(BoardVO2 vo) throws Exception;
	
	//게시물 상세정보
	BoardVO2 selectBoard(BoardVO2 vo) throws Exception;	
	
	//조회수 업
	void updateViewCnt(BoardVO2 vo) throws Exception;
	
	//게시물 수정하기
	void updateBoard(BoardVO2 vo) throws Exception;
	
	//게시물 삭제하기
	void deleteBoard(BoardVO2 vo) throws Exception;
}
