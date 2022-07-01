package egovframework.let.login.web;

import java.util.List;
import java.util.Map;

import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.FileVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;


import egovframework.let.board.service.BoardService;
import egovframework.let.board.service.BoardVO;
import egovframework.let.uat.uia.service.EgovLoginService;
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
public class LoginController {	
	
	@Resource(name = "loginService")
	private EgovLoginService loginService;
	
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	//로그인
	@RequestMapping(value = "/login/actionLogin.do")
	public String actionLogin(@ModelAttribute("loginVO") LoginVO loginVO,
			HttpServletRequest request, ModelMap model) throws Exception{
		
		LoginVO resultVO = loginService.actionLogin(loginVO);
		if(resultVO != null && resultVO.getId() != null && !resultVO.getId().equals("")) {
			request.getSession().setAttribute("LoginVO", resultVO);
			return "forward:/index.do";
		}else {
			model.addAttribute("loginMessage", egovMessageSource.getMessage("fail.commom.login"));
			return "forward:/index.do";
		}
		
	}
	
	//로그아웃
	@RequestMapping(value = "/login/actionLogout.do")
	public String actionLogout(HttpServletRequest request, ModelMap model) throws Exception{
		
		//RequestContextHolder.getRequestAttributes()
		//.removeAttribute("LoginVO", RequestAttributes.SCOPE_SESSION);
		request.getSession().invalidate();
		
		return "forward:/index.do";
	}
}

	
	
	
	
	
