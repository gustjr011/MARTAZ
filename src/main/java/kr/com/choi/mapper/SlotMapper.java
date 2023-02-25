package kr.com.choi.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.json.JSONObject;

@Mapper
public interface SlotMapper {
//	int selectSlotCheck(String id);	//슬롯 등록여부 카운트
	HashMap<String, Object> selectSlotIdx(String idx);	//슬롯 조회
	
	HashMap<String, Object> selectGetSlotCnt(String mberNo);	//내 현재 슬롯 조회
	ArrayList<JSONObject> selectGetSlotList();
	
	ArrayList<JSONObject> getSlotList();	// 슬롯 리스트
	
	int insertSlot(HashMap<String, Object> body);	//슬롯 추가
	int updateSlot(HashMap<String, Object> body);	//슬롯 수정
}
