package kr.com.choi.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.com.choi.mapper.SlotMapper;
import lombok.extern.slf4j.Slf4j;

@Service("slotService")
@Slf4j
public class SlotService {
	
	@Autowired
	private SlotMapper slotMapper;
	
	//구조 변경이 필요할까...?
	public ModelAndView registSlot(HashMap<String, Object> body) {
		ModelAndView rs = new ModelAndView();
		try {
//			String id = (String) body.get("id");
//			int schCountMber = slotMapper.selectSlotIdx(idx);
//			
//			if(schCountMber > 0) {
//				System.out.println("err registMber -601");
//				rs.addObject("id", id);
//				rs.addObject("message", "이미 등록 된 슬롯입니다.");
//				rs.setViewName("/main");
//				return rs;
//			}	//중복 슬롯 등록 제어용
			
			int result = slotMapper.insertSlot(body);
			
			if(result != 1){
				System.out.println("err registMber -602");
				
				rs.addObject("message", "등록에 실패하였습니다.");
				rs.setViewName("/mber/join");
				
				return rs;
			}
			
//			HashMap<String, Object> rsMer = slotMapper.selectMberId(idx);
			rs.addObject("message", "등록 하였습니다.");
			rs.setViewName("main");
		}catch (Exception e) {
			System.out.println("err registMber -600");
			rs.addObject("message", "운영자에게 문의바랍니다.");
			rs.setViewName("/mber/join");
		}
		return rs;
	}
	
	public HashMap<String, Object> selectGetSlotCnt(String memberNo) {
		HashMap<String, Object> rs = slotMapper.selectGetSlotCnt(memberNo);
		
		if(rs == null) {
			System.out.println("errrrr");
			return null;
		}
		return rs;
	}
	
//	public HashMap<String, Object> slotDetail(HashMap<String, Object> body) {
//		int idx = (int) body.get("idx");
//		
//		HashMap<String, Object> result = slotMapper.selectSlotIdx(idx);
//		
//		if(result == null) {
//			System.out.println("가입 안된 회원");
//			return null;
//		}		
//		return result;
//	}
	
	public ArrayList slotList() {
		JSONObject jsonObject = new JSONObject();
		
		ArrayList<JSONObject> rs = slotMapper.getSlotList();
		
		return rs;
	}
}
