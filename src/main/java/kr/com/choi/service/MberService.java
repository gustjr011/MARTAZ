package kr.com.choi.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.com.choi.mapper.MberMapper;
import lombok.extern.slf4j.Slf4j;

@Service("mberService")
@Slf4j
public class MberService {
	
	@Autowired
	private MberMapper mberMapper;
	
	public ModelAndView registMber(HashMap<String, Object> body) {
		ModelAndView rs = new ModelAndView();
		try {
			String id = (String) body.get("id");
			int schCountMber = mberMapper.countMberIdCheck(id);
			
			if(schCountMber > 0) {
				System.out.println("err registMber -601");
				rs.addObject("id", id);
				rs.addObject("message", "이미 가입된 회원입니다.");
				rs.setViewName("/mber/join");
				return rs;
			}
			
			int result = mberMapper.insertMber(body);
			
			if(result != 1){
				System.out.println("err registMber -602");
				rs.addObject("id", id);
				rs.addObject("message", "가입에 실패하였습니다.");
				rs.setViewName("/mber/join");
				return rs;
			}
			
			HashMap<String, Object> rsMer = mberMapper.selectMberId(id);
			rs.addObject("id", id);
			rs.addObject("message", "가입 하였습니다.");
			rs.setViewName("main");
			
		}catch (Exception e) {
			System.out.println("err registMber -600");
			rs.addObject("message", "운영자에게 문의바랍니다.");
			rs.setViewName("/mber/join");
		}
		return rs;
	}
	
	public HashMap<String, Object> schMber(HashMap<String, Object> body) {
		String id = (String) body.get("user_id");
		
		HashMap<String, Object> rs = mberMapper.selectMberId(id);
		
		if(rs == null) {
			System.out.println("errrrr");
			return null;
		}
		
		return rs;	
	}
	
	public HashMap<String, Object> schMberNo(int no) {
		HashMap<String, Object> rs = mberMapper.selectMberNo(no);
		
		if(rs == null) {
			System.out.println("errrrr");
			return null;
		}
		
		return rs;
	}
	
	public HashMap<String, Object> loginMber(HashMap<String, Object> body) {
		String paramId = (String) body.get("id");
		String paramPw = (String) body.get("password");
		
		int rs = mberMapper.selectMberIdCheck(paramId, paramPw);
		
		if(rs == 0) {
			System.out.println("가입 안된 회원");
			return null;
		}
		
		HashMap<String, Object> rsMer = mberMapper.selectMberId(paramId);
		
		String dbPw = (String) rsMer.get("password");
		
		if(!dbPw.equals(paramPw)) {
			System.out.println("비밀번호 다름");
			return null;
		}
		
		return rsMer;
	}
	
	public ArrayList mberList() {
		JSONObject jsonObject = new JSONObject();
		
		ArrayList<JSONObject> rs = mberMapper.selectMberList();
		
		return rs;
	}
}
