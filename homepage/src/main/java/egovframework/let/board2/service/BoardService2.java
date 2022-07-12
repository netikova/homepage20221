package egovframework.let.board2.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

import java.io.Serializable;

import egovframework.com.cmm.ComDefaultVO;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.util.EgovMap;


public interface BoardService2 {	
	
	//게시물 목록 가져오기
	public List<EgovMap> selectBoardList(BoardVO2 vo) throws Exception;
	
	//게시물 목록수
	public int selectBoardListCnt(BoardVO2 vo) throws Exception;
	
	//게시물 등록하기
	public String insertBoard(BoardVO2 vo) throws Exception;
	
	//게시물 상세정보
	public BoardVO2 selectBoard(BoardVO2 vo) throws Exception;
	
	//게시물 수정하기
	public void updateBoard(BoardVO2 vo) throws Exception;
	
	//게시물 삭제하기
	public void deleteBoard(BoardVO2 vo) throws Exception;
	
	
}