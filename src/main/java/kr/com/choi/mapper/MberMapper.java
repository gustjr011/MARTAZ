package kr.com.choi.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.json.JSONObject;

@Mapper
public interface MberMapper {
	int selectMberIdCheck(String id, String password);	//아이디, pw 검증 갯수를 반환
	int countMberIdCheck(String id);	//아이디 갯수를 반환
	
	int insertMber(HashMap<String, Object> body);	//회원 가입
	HashMap<String, Object> selectMberId(String id);	//회원 정보조회
	HashMap<String, Object> selectMberNo(int no);	//회원 정보조회
	
	ArrayList<JSONObject> selectMberList();	//회원 리스트 조회 
}
