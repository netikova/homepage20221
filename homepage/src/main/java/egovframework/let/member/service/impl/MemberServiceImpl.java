package egovframework.let.member.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.member.service.MemberService;
import egovframework.let.member.service.MemberVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("MemberService")
public class MemberServiceImpl extends EgovAbstractServiceImpl implements MemberService {

	@Resource(name="memberMapper")
	private MemberMapper memberMapper;
	

	//데이터 등록하기
	public void insertMember(MemberVO vo) throws Exception{
		memberMapper.insertMember(vo);
		
	}
	
	
}
