package egovframework.let.member.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.let.member.service.MemberService;
import egovframework.let.member.service.MemberVO;

@Controller
public class MemberController {

	
	@Resource(name="MemberService")
	private MemberService memberService;
	
	//데이터 등록/수정
	/*@RequestMapping(value = "member/memberService.do")
	public String memberRegist(@ModelAttribute("searchVO") MemberVO memberVO,
	    HttpServletRequest request, ModelMap model) throws Exception{
		
		MemberVO result = new MemberVO();
		if(!EgovStringUtil.isEmpty(memberVO.getMemberId())) {
			result = memberService.selectMember(memberVO);
		}
		model.addAttribute("result", result);
		
		return "member/MemberRegist";
	}*/
	
	
	@RequestMapping(value = "/member/insert.do", method = RequestMethod.GET)
	public String loginForm() {				
		return "forward:/index.do";
	}
	//데이터 등록
	@RequestMapping(value = "/member/insert.do")
	public String insert(@ModelAttribute("searchVO") MemberVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
		memberService.insertMember(searchVO);
	
		return "forward:/index.do";
	}
}
