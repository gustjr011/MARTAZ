package kr.com.choi.vo;

import java.util.List;

public class SlotVO {
	private int 	slotNo;
	private int 	memberSlotNo;
	private int 	deviceType;
	private int 	platformType;
	private String 	keyword;
	private String 	searchKey;
	private String 	slotName;
	private int 	headless;
	private int 	jobCount;
	private int 	failCount;
	private String 	insDate;
	private int 	status;
	
	private List<SlotVO> SlotVoList;
	
	public List<SlotVO> getSlotVoList() {
		return SlotVoList;
	}
	public void setSlotVoList(List<SlotVO> slotVoList) {
		this.SlotVoList = slotVoList;
	}
	public int getSlotNo() {
		return slotNo;
	}
	public void setSlotNo(int slotNo) {
		this.slotNo = slotNo;
	}
	public int getMemberSlotNo() {
		return memberSlotNo;
	}
	public void setMemberSlotNo(int memberSlotNo) {
		this.memberSlotNo = memberSlotNo;
	}
	public int getDeviceType() {
		return deviceType;
	}
	public void setDeviceType(int deviceType) {
		this.deviceType = deviceType;
	}
	public int getPlatformType() {
		return platformType;
	}
	public void setPlatformType(int platformType) {
		this.platformType = platformType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getSlotName() {
		return slotName;
	}
	public void setSlotName(String slotName) {
		this.slotName = slotName;
	}
	public int getHeadless() {
		return headless;
	}
	public void setHeadless(int headless) {
		this.headless = headless;
	}
	public int getJobCount() {
		return jobCount;
	}
	public void setJobCount(int jobCount) {
		this.jobCount = jobCount;
	}
	public int getFailCount() {
		return failCount;
	}
	public void setFailCount(int failCount) {
		this.failCount = failCount;
	}
	public String getInsDate() {
		return insDate;
	}
	public void setInsDate(String insDate) {
		this.insDate = insDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
