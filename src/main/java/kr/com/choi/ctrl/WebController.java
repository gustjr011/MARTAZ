package kr.com.choi.ctrl;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.com.choi.service.WebService;
import kr.com.choi.vo.Result;

@RestController
@RequestMapping(path = "/web")
public class WebController {
	
	@Autowired
	private WebService webService;
	
	@GetMapping(path = "/slotList")
	public ModelAndView slotListPage(HashMap<String, Object> body) {
		ModelAndView rsPage = new ModelAndView();
		ArrayList<HashMap<String, Object>> rs = webService.getSlotList();
		
		rsPage.addObject("slotList", rs);
//		rsPage.setViewName("/slot/slotList");
		rsPage.setViewName("/slot/list");
		
		return rsPage;
	}
	
	@GetMapping(path="/productList")
	public ModelAndView productListPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int memberNo = Integer.parseInt(session.getAttribute("memberNo")+""); 
		
		ModelAndView rsPage = new ModelAndView();
		ArrayList<HashMap<String, Object>> rs = webService.getProductList(memberNo);
		
		rsPage.addObject("productList", rs);
		rsPage.setViewName("/product/list");
		
		return rsPage;
	}
	
	@GetMapping(path="/productListAdmin")
	public ModelAndView productAllListPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		ModelAndView rsPage = new ModelAndView();
		ArrayList<HashMap<String, Object>> rs = webService.getProductAllList();
		
		rsPage.addObject("productList", rs);
		rsPage.setViewName("/admin/productList");
		
		return rsPage;
	}
	
	@GetMapping(path="/productKeywordList")
	public ModelAndView productKeywordListPage(@RequestParam int productNo, HttpServletRequest request) {
		ModelAndView rsPage = new ModelAndView();
		HttpSession session = request.getSession();
		int memberNo = Integer.parseInt(session.getAttribute("memberNo")+""); 
		
		ArrayList<JSONObject> rs = webService.getProductKeywordList(productNo, memberNo);
		
		rsPage.addObject("productKeywordList", rs);
		rsPage.setViewName("/product/keywordList");
		
		return rsPage;
	}
	
	@GetMapping(path="/productAdminKeywordList")
	public ModelAndView productAdminKeywordList(@RequestParam int productNo, HttpServletRequest request) {
		ModelAndView rsPage = new ModelAndView();
		ArrayList<JSONObject> rs = webService.getProductAdminKeywordList(productNo);
		
		rsPage.addObject("productKeywordList", rs);
		rsPage.setViewName("/product/keywordList");
		
		return rsPage;
	}
	
	@GetMapping(path = "/slotDetail")
	public ModelAndView slotRegPage(@RequestParam String paramSchKey) {
		ModelAndView rsPage = new ModelAndView();
		
		if(paramSchKey != "" && paramSchKey != null ) {
			HashMap<String, Object> result = webService.getSlotItem(paramSchKey);
			rsPage.addObject("message", "slotNo : " + result.get("slotNo") + "조회 완료");
			rsPage.addObject("slotNo", result.get("slotNo"));
			rsPage.addObject("memberSlotNo", result.get("memberSlotNo"));
			rsPage.addObject("deviceType", result.get("deviceType"));
			rsPage.addObject("platformType", result.get("platformType"));
			rsPage.addObject("keyword", result.get("keyword"));
			rsPage.addObject("searchKey", result.get("searchKey"));
			rsPage.addObject("slotName", result.get("slotName"));
			rsPage.addObject("headless", result.get("headless"));
		}
		rsPage.setViewName("/slot/detail");
		
		return rsPage;
	}
	
	@RequestMapping(value="/updateProductKeyword", method=RequestMethod.POST)
	public @ResponseBody Result updateProductKeyword(@RequestParam HashMap<String, Object> body, HttpServletRequest request) throws Exception {
		Result result = new Result();
		try{
			JSONObject jObject = new JSONObject(body.get("jsonParam").toString());
			HashMap<String, Object> dataSet = new HashMap<String, Object>();
			
			HttpSession session = request.getSession();
			int memberNo = Integer.parseInt(session.getAttribute("memberNo")+"");
			
			dataSet.put("MEMBER_NO", memberNo);
			dataSet.put("PRODUCT_DETAIL_NO", jObject.get("productDetailNo"));
			dataSet.put("KEYWORD", jObject.get("keyword"));
			dataSet.put("DEVICE_TYPE", jObject.get("deviceType"));
			dataSet.put("SLOT_CNT", jObject.get("slotCnt"));
			dataSet.put("TEST_YN", jObject.get("TEST_YN"));
			
			if(jObject.get("mode").toString().equals("new")) {
				dataSet.put("KEYWORD_NO", 0);
			} else {
				dataSet.put("KEYWORD_NO", jObject.get("keywordNo"));
			}
			
			if(jObject.get("mode").toString().equals("delete")) {
				dataSet.put("STATUS", 0);	//0이면 삭제
			} else {
				dataSet.put("STATUS", 1);
			}
			result = webService.updateProductKeyword(dataSet);
		} catch (Exception e) {
			result.setResultCode(-999);
			result.setResultString("네트워크 에러");
		} 
		return result;
	}
	
	@RequestMapping(value="/insertProductInfo", method=RequestMethod.POST)
	public @ResponseBody Result insertProductInfo(@RequestParam HashMap<String, Object> body, HttpServletRequest request) throws Exception {
		Result result = new Result();
		try{
			JSONObject jObject = new JSONObject(body.get("jsonParam").toString());
			HashMap<String, Object> dataSet = new HashMap<String, Object>();
			
			HttpSession session = request.getSession();
			int memberNo = Integer.parseInt(session.getAttribute("memberNo")+"");

			dataSet.put("productName", jObject.get("productName"));
			dataSet.put("memberNo", memberNo);
			System.out.println(dataSet);
			int resultInt = webService.insertProductInfo(dataSet); 
			
			if(resultInt == 1) {
				result.setResultCode(200);
				result.setResultString("성공입니다.");
			} else {
				result.setResultCode(505);
				result.setResultString("관리자에게 문의바립니다.");
			}
		} catch (Exception e) {
			result.setResultCode(-999);
			result.setResultString("네트워크 에러");
		} 
		return result;
	}
	
	@RequestMapping(value="/insertProductDetail", method=RequestMethod.POST)
	public @ResponseBody Result insertProductDetail(@RequestParam HashMap<String, Object> body) throws Exception {
		Result result = new Result();
		try{
			JSONObject jObject = new JSONObject(body.get("jsonParam").toString());
			HashMap<String, Object> dataSet = new HashMap<String, Object>();

			dataSet.put("productNo", jObject.get("productNo"));
			dataSet.put("platformType", jObject.get("platformType"));
			dataSet.put("searchKey", jObject.get("searchKey"));
			System.out.println(dataSet);
			int resultInt = webService.insertProductDetail(dataSet); 
			
			if(resultInt == 1) {
				result.setResultCode(200);
				result.setResultString("성공입니다.");
			} else {
				result.setResultCode(505);
				result.setResultString("관리자에게 문의바립니다.");
			}
		} catch (Exception e) {
			result.setResultCode(-999);
			result.setResultString("네트워크 에러");
		} 
		return result;
	}
	
	@RequestMapping(value="/insertSlot", method=RequestMethod.POST)
	public ModelAndView insertMber(@RequestParam HashMap<String, Object> body) throws Exception {
		ModelAndView rs = new ModelAndView();
		try {
			rs = webService.insertSlot(body);
		} catch (Exception e) {
			rs.addObject("message","에러!!");
		} 
		return rs;
	}

	@RequestMapping(value="/updateSlot", method=RequestMethod.POST)
	public ModelAndView updateSlot(@RequestParam HashMap<String, Object> body) throws Exception {
		ModelAndView rs = new ModelAndView();
		try {
			rs = webService.updateSlot(body);
		} catch (Exception e) {
			rs.addObject("message","에러!!");
		} 
		return rs;
	}
}
