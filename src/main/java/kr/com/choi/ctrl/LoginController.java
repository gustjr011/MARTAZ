package kr.com.choi.ctrl;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.com.choi.service.MberService;

@Controller
public class LoginController {
	
	@Autowired
	private MberService mberService;
	
	@RequestMapping(value="/") 
	public String login() { 
		return "/login"; 
	}
	
	@RequestMapping(value="/logOut") 
	public String logOut(HttpServletRequest request) { 
		HttpSession session = request.getSession();
		
		session.removeAttribute("memberNo");
		session.invalidate();
		
		return "/login"; 
	}
	
	@RequestMapping(value="/", method=RequestMethod.POST) 
	public ModelAndView slotListPage(@RequestParam HashMap<String, Object> body) throws Exception { 
		ModelAndView rs = new ModelAndView();
		
		try {
			HashMap<String, Object> result = mberService.loginMber(body);
			
			if(result != null) {

				rs.addObject("id", result.get("id"));
				rs.addObject("name", result.get("name"));
				rs.addObject("birth", result.get("birth"));

				rs.addObject("message", "로그인 성공2");
				
				rs.setViewName("member");
			} else {
				throw new Exception("no result");
			}
		} catch (Exception e) {
			rs.addObject("message", "로그인 실패");
			rs.setViewName("error");
		}
		
		return rs; 
	}
	
	@RequestMapping(value="/loginMber", method=RequestMethod.POST)
	public ModelAndView loginMber(@RequestParam HashMap<String, Object> body, HttpServletRequest request) throws Exception {
		ModelAndView rs = new ModelAndView();
		try {
			HashMap<String, Object> result = mberService.loginMber(body);
			
			if(result != null) {
				HttpSession session = request.getSession();
				
				String name = result.get("memberName").toString();
				
		        session.setAttribute("memberNo", result.get("memberNo"));
		        session.setAttribute("memberName", name);
		        session.setAttribute("memberId", result.get("memberId"));
		        session.setAttribute("auth", result.get("auth"));
				
				rs.addObject("message", name+"님 환영합니다.");
				
				rs.setViewName("main");
			} else {
				throw new Exception("no result");
			}
		} catch (Exception e) {
			rs.addObject("message", "로그인 실패");
			rs.setViewName("error");
			System.out.println(e);
		}
		
		return rs; 
	}
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) throws Exception {
		ModelAndView rs = new ModelAndView();
		try {
			 HttpSession session = request.getSession();
			 System.out.println(session.getAttribute("userNo"));
			 System.out.println(session.getAttribute("userName"));
			 
			 rs.setViewName("/main");
		} catch (Exception e) {
			rs.addObject("message","에러!!");
		} 
		return rs;
	}
	
	@RequestMapping(value="/loginFatchMber", method=RequestMethod.POST, produces = "application/json; charset=utf8")
	public HashMap<String, Object> loginFatchMber(@RequestBody HashMap<String, Object> body) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = mberService.loginMber(body);
			if(result == null) {
				throw new Exception("no result");
			}
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
		return result; 
	}
}
