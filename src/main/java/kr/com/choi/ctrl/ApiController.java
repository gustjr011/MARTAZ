package kr.com.choi.ctrl;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.com.choi.service.WebService;

@RestController
@RequestMapping(path = "/api")
public class ApiController {
	//api 전송용
	@Autowired
	private WebService webService;
	
//	@PostMapping(path = "/postSample")
//	public void postSample(@RequestParam HashMap<String, Object> param){
//		System.out.println("postSample");
//	}
//	
//	@GetMapping(path = "/getSample")
//	public void getSample(@RequestParam String paramSchKey){
//		System.out.println("getSample");
//	}
	
//	@GetMapping(path = "/slotList")
//	public HashMap<String, Object> slotList(@RequestParam String paramSchKey){
//		HashMap<String, Object> rs = webService.getSlotList();
//		return rs;
//	}
	
	@GetMapping(path = "/getSlotItem")
	public HashMap<String, Object> getSlotItem(@RequestParam String paramSchKey){
		HashMap<String, Object> rs = webService.getSlotItem(paramSchKey);
		return rs;
	}
	
//	@GetMapping(path = "/getSlotListPage")
//	public HashMap<String, Object> getSlotList(HashMap<String, Object> body) {
//		HashMap<String, Object> rs = webService.getSlotList();
//		
//		return rs;
//	}
	
	@PostMapping(path = "/getSlotCount")
	public HashMap<String, Object> getSlotList(HttpServletRequest request) {
		String mberNo = request.getParameter("mberNo");
		HashMap<String, Object> rs = new HashMap<>();
		
		if(mberNo != "")
			rs = webService.selectGetSlotCnt(mberNo);
		
		return rs;
	}
}
