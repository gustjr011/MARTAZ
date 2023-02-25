package kr.com.choi.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.json.JSONObject;

@Mapper
public interface WebMapper {
	ArrayList<JSONObject> getSlotList();
	HashMap<String, Object> getSlotItem(String schKey);
}
