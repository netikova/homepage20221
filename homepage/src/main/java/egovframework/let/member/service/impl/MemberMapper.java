package egovframework.let.member.service.impl;

import egovframework.let.member.service.MemberVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("memberMapper")
public interface MemberMapper {
   
	//데이터 등록
	void insertMember(MemberVO vo) throws Exception;
}
