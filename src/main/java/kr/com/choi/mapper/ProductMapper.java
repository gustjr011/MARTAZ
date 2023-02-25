package kr.com.choi.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.json.JSONObject;

import kr.com.choi.vo.Result;

@Mapper
public interface ProductMapper {
	//===================================member===================================
	ArrayList<HashMap<String, Object>> getProductList(int memberNo);	// 상품 리스트
	ArrayList<HashMap<String, Object>> getProductInfo(int memberNo);	// 상품 상세 정보
	ArrayList<JSONObject> getProductKeywordList(int productNo, int memberNo);	// 상품키워드 리스트
	
	//===================================admin===================================
	ArrayList<HashMap<String, Object>> getProductAllList();	// 전체	상품 리스트
	ArrayList<HashMap<String, Object>> getProductAllInfo();	// 전체 	상품 상세 정보
	ArrayList<JSONObject> getProductAdminKeywordList(int memberNo);	// 상품키워드 리스트
	
	//===================================insert===================================
	int insertProductInfo(HashMap<String, Object> body);	// 상품정보 입력
	int insertProductDetail(HashMap<String, Object> body);	// 상품디테일 입력
	
	//===================================update===================================
	Result updateProductKeyword(HashMap<String, Object> body);	// 상품키워드 업데이트
}
