package kr.com.choi.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.com.choi.mapper.ProductMapper;
import kr.com.choi.mapper.SlotMapper;
import kr.com.choi.vo.Result;
import lombok.extern.slf4j.Slf4j;

@Service("webService")
@Slf4j
public class WebService {
	
	@Autowired
	private SlotMapper slotMapper;
	
	@Autowired
	private ProductMapper productMapper;
	
	public ArrayList<HashMap<String, Object>> getProductList(int memberNo) {
		ArrayList<HashMap<String, Object>> productList = productMapper.getProductInfo(memberNo);
		ArrayList<HashMap<String, Object>> productDetailList = productMapper.getProductList(memberNo);
		
		for(HashMap<String, Object> productInfo : productList) {
			long productNo = (long) productInfo.get("productNo");
			
			if(!productInfo.containsKey("detailList")) {
				productInfo.put("detailList", new ArrayList<HashMap<String, Object>>());
			}
			
			for(HashMap<String, Object> productDetail : productDetailList) {
				long productInfoNo = (long) productDetail.get("I_No");
				if(productNo == productInfoNo) {
					ArrayList<HashMap<String, Object>> detailList = (ArrayList<HashMap<String, Object>>) productInfo.get("detailList");
					
					if(!detailList.contains(productDetail)) {
						detailList.add(productDetail);
					}
				}
			}
		}
		return productList;
	}
	
	public ArrayList<HashMap<String, Object>> getProductAllList() {
		ArrayList<HashMap<String, Object>> productAllList = productMapper.getProductInfo(0);
		ArrayList<HashMap<String, Object>> productDetailList = productMapper.getProductList(0);
		
		for(HashMap<String, Object> productAllInfo : productAllList) {
			long productNo = (long) productAllInfo.get("productNo");
			
			if(!productAllInfo.containsKey("detailList")) {
				productAllInfo.put("detailList", new ArrayList<HashMap<String, Object>>());
			}
			
			for(HashMap<String, Object> productAllDetail : productDetailList) {
				long productInfoNo = (long) productAllDetail.get("I_No");
				if(productNo == productInfoNo) {
					ArrayList<HashMap<String, Object>> detailList = (ArrayList<HashMap<String, Object>>) productAllInfo.get("detailList");
					
					if(!detailList.contains(productAllDetail)) {
						detailList.add(productAllDetail);
					}
				}
			}
		}
		
		return productAllList;
	}
	
	public ArrayList getProductKeywordList(int productNo, int memberNo) {
		JSONObject jsonObject = new JSONObject();
		ArrayList<JSONObject> rs = productMapper.getProductKeywordList(productNo, memberNo);
		
		if(rs.size() == 0) {
			System.out.println("없음");
			return null;
		}
		return rs;
	}
	public ArrayList getProductAdminKeywordList(int productNo) {
		JSONObject jsonObject = new JSONObject();
		ArrayList<JSONObject> rs = productMapper.getProductAdminKeywordList(productNo);
		
		if(rs.size() == 0) {
			System.out.println("없음");
			return null;
		}
		return rs;
	}
	
	public ArrayList getSlotList() {
		JSONObject jsonObject = new JSONObject();
		ArrayList<JSONObject> rs = slotMapper.selectGetSlotList();
		
		if(rs.size() == 0) {
			System.out.println("없음");
			return null;
		}
		return rs;
	}
	
	public HashMap<String, Object> getSlotItem(String schKey) {
		HashMap<String, Object> rs = new HashMap<String, Object>();
		
		if(rs == null) {
			System.out.println("해당 slot 없음");
		} else {
			rs = slotMapper.selectSlotIdx(schKey);
		}
		return rs;
	}
	
	public ModelAndView insertSlot(HashMap<String, Object> body) {
		ModelAndView rs = new ModelAndView();
		try {
			int result = slotMapper.insertSlot(body);
			
			if(result != 1){
				System.out.println("err insertSlot -602");
				rs.addObject("message", "등록에 실패하였습니다.");
				rs.setViewName("/web/slotList");
				return rs;
			}

			rs.addObject("message", "등록 하였습니다.");
			rs.setViewName("main");
			
		}catch (Exception e) {
			System.out.println("err insertSlot -600");
			rs.addObject("message", "운영자에게 문의바랍니다.");
			rs.setViewName("/web/slotList");
		}
		return rs;
	}
	
	public ModelAndView updateSlot(HashMap<String, Object> body) {
		ModelAndView rs = new ModelAndView();
		try {
			int result = slotMapper.updateSlot(body);
			
			if(result != 1){
				System.out.println("err insertSlot -602");
				rs.addObject("message", "등록에 실패하였습니다.");
				rs.setViewName("/web/slotList");
				return rs;
			}

			rs.addObject("message", "수정 하였습니다.");
			rs.setViewName("main");
			
		}catch (Exception e) {
			System.out.println("err updateSlot -600");
			rs.addObject("message", "운영자에게 문의바랍니다.");
			rs.setViewName("/web/slotList");
		}
		return rs;
	}
	
	public int insertProductInfo(HashMap<String, Object> body) {
		int result = 0;
		try {
			result = productMapper.insertProductInfo(body);
		}catch (Exception e) {
			System.out.println("err insertProductInfo -600");
			e.printStackTrace();
		}
		return result;
	}
	
	public int insertProductDetail(HashMap<String, Object> body) {
		int result = 0;
		try {
			result = productMapper.insertProductDetail(body);
		}catch (Exception e) {
			System.out.println("err insertProductDetail -600");
			e.printStackTrace();
		}
		return result;
	}
	
	public Result updateProductKeyword(HashMap<String, Object> body) {
		Result result = new Result();
		try {
			result = productMapper.updateProductKeyword(body);
		}catch (Exception e) {
			System.out.println("err updateProductKeyword -600");
			e.printStackTrace();
		}
		return result;
	}
	
	public HashMap<String, Object> selectGetSlotCnt(String memberNo) {
		HashMap<String, Object> rs = slotMapper.selectGetSlotCnt(memberNo);
		
		if(rs == null) {
			System.out.println("errrrr");
			return null;
		}
		return rs;
	}
}
