package com.green.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class HomeController {
	
	@Autowired
	private UserService  userService; 
	
	@RequestMapping("/")
	public  String  home() {
		return "home";   // /WEB-INF/views/home.jsp
	}
	
	@GetMapping("/mypage")
	public String mypage( String user_id, Model model ) {
		UserVo vo = userService.getUser(user_id);
		model.addAttribute("vo", vo );
		return "user/mypage";
	}
	
	@RequestMapping("/login")
	public  String  login() {
		return "user/login"; //WEB-INF/views/user/login.jsp
	}
	
	@RequestMapping("/loginProcess")
	public  String   loginProcess(
		HttpSession     session,
		@RequestParam   HashMap<String, Object> map) {
		
		String returnURL = "";
		if( session.getAttribute("login") != null ) {
			// 기존 login 이란 session 에 값이 존재한다면
			session.removeAttribute("login");  // 기존값을 제거한다
		}
		
		// 로그인을 성공하면 UserVo 객체를 반환함
		UserVo  vo  = userService.login( map );
		if ( vo != null ) {
			session.setAttribute("login", vo);
			returnURL = "redirect:/";        // 로그인 성공시
		} else {
			returnURL = "redirect:/login";	 // 로그인 실패시		
		}
		return returnURL;		
	}
	
	// 로그아웃
	@RequestMapping("/logout") 
	public  String  logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";  // 로그아웃시 이동할 주소 -> /login
	}
	
}
