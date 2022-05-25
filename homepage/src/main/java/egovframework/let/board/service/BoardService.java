package egovframework.let.board.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

import java.io.Serializable;

import egovframework.com.cmm.ComDefaultVO;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.util.EgovMap;


public interface BoardService {	
	
	//게시물 목록 가져오기
	public List<EgovMap> selectBoardList(BoardVO vo) throws Exception;
	
	//게시물 목록수
	public int selectBoardListCnt(BoardVO vo) throws Exception;
	
	//게시물 등록하기
	public String insertBoard(BoardVO vo) throws Exception;
	
	
}