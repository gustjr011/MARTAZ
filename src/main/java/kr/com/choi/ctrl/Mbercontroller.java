package kr.com.choi.ctrl;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.com.choi.service.MberService;
import kr.com.choi.vo.MberVO;

@Controller
public class Mbercontroller {
	
	@Autowired
	private MberService mberService;
	
	@RequestMapping(value="/join") 
	public String index() { 
		return "/mber/join"; 
	}
	
	@RequestMapping(value="/detail") 
	public String indexDetail(@RequestParam int mberNo, Model model) throws Exception{
		HashMap<String, Object> result = mberService.schMberNo(mberNo);
		ModelAndView rs = new ModelAndView();
		
		if(result != null) {
			MberVO memberVO = new MberVO();
			
			Long memberNo = (Long) result.get("memberNo");
			String memberName = (String) result.get("memberName");
			int status = (int) result.get("status");
			String memberId = (String) result.get("memberId");
			String mail = (String) result.get("mail");
			String phone = (String) result.get("phone");
			
			memberVO.setMemberNo(memberNo);
			memberVO.setMemberName(memberName);
			memberVO.setMemberId(memberId);
			memberVO.setStatus(status);
			memberVO.setMemberId(memberId);
			memberVO.setPhone(phone);
			memberVO.setMail(mail);
			
			model.addAttribute("memberInfo", memberVO);
		} else {
			throw new Exception("no result");
		}
		return "/mber/detail"; 
	}
	
	@RequestMapping(value="/insertMber", method=RequestMethod.POST)
	public ModelAndView insertMber(@RequestParam HashMap<String, Object> body) throws Exception {
		ModelAndView rs = new ModelAndView();
		try {
			rs = mberService.registMber(body);
		} catch (Exception e) {
			rs.addObject("message","에러!!");
		} 
		return rs;
	}
	
	@RequestMapping(value="/schMber", method=RequestMethod.POST)
	public ModelAndView schMber(@RequestParam HashMap<String, Object> body) throws Exception {
		ModelAndView rs = new ModelAndView();
		try {
			HashMap<String, Object> result = mberService.schMber(body);
			
			if(result != null) {
				rs.addObject("id", result.get("id"));
				rs.addObject("name", result.get("name"));
				rs.addObject("birth", result.get("birth"));
				
				rs.addObject("message", "조회 성공!");
				
				rs.setViewName("member");
			} else {
				throw new Exception("no result");
			}
		} catch (Exception e) {
			rs.addObject("message","에러!!");
		}
		return rs; 
	}
	
	@RequestMapping(value="/mberList", method=RequestMethod.GET)
	public String mberList(@RequestParam HashMap<String, Object> body, Model model) throws Exception {
		try {
			ArrayList<MberVO> list = new ArrayList();
			ArrayList<MberVO> result = mberService.mberList();
			if(result != null) {
				for (int i = 0; i < result.size(); i++) {
					MberVO memberVO = new MberVO();
					
					Long memberNo = result.get(i).getMemberNo();
					String memberId = result.get(i).getMemberId();
					String password = result.get(i).getPassword();
					String memberName = result.get(i).getMemberName();
					String phone = result.get(i).getPhone();
					String mail = result.get(i).getMail();
					String insDate = result.get(i).getInsDate();
					int status = result.get(i).getStatus();
					
					memberVO.setMemberNo(memberNo);
					memberVO.setMemberId(memberId);
					memberVO.setPassword(password);
					memberVO.setMemberName(memberName);
					memberVO.setPhone(phone);
					memberVO.setMail(mail);
					memberVO.setInsDate(insDate);
					memberVO.setStatus(status);
					
					list.add(memberVO);
				}
				model.addAttribute("memberList", list);
			} else {
				throw new Exception("no result");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "/mber/list"; 
	}
}
