package kr.com.choi.vo;

import java.util.List;

public class ProductVO {
	private int 	I_No;
	private String 	I_Name;
	private int 	I_status;
	private int 	D_DetailNo;
	private int 	D_platformType;
	private String 	D_searchKey;
	private int 	D_status;
	private int 	K_No;
	private String 	K_keyword;
	private int 	K_deviceType;
	private int 	K_rank;
	private int 	K_slotCnt;
	
	private List<ProductVO> ProductVoList;

	public int getI_No() {
		return I_No;
	}

	public void setI_No(int i_No) {
		I_No = i_No;
	}

	public String getI_Name() {
		return I_Name;
	}

	public void setI_Name(String i_Name) {
		I_Name = i_Name;
	}

	public int getI_status() {
		return I_status;
	}

	public void setI_status(int i_status) {
		I_status = i_status;
	}

	public int getD_DetailNo() {
		return D_DetailNo;
	}

	public void setD_DetailNo(int d_DetailNo) {
		D_DetailNo = d_DetailNo;
	}

	public int getD_platformType() {
		return D_platformType;
	}

	public void setD_platformType(int d_platformType) {
		D_platformType = d_platformType;
	}

	public String getD_searchKey() {
		return D_searchKey;
	}

	public void setD_searchKey(String d_searchKey) {
		D_searchKey = d_searchKey;
	}

	public int getD_status() {
		return D_status;
	}

	public void setD_status(int d_status) {
		D_status = d_status;
	}

	public int getK_No() {
		return K_No;
	}

	public void setK_No(int k_No) {
		K_No = k_No;
	}

	public String getK_keyword() {
		return K_keyword;
	}

	public void setK_keyword(String k_keyword) {
		K_keyword = k_keyword;
	}

	public int getK_deviceType() {
		return K_deviceType;
	}

	public void setK_deviceType(int k_deviceType) {
		K_deviceType = k_deviceType;
	}

	public int getK_rank() {
		return K_rank;
	}

	public void setK_rank(int k_rank) {
		K_rank = k_rank;
	}

	public int getK_slotCnt() {
		return K_slotCnt;
	}

	public void setK_slotCnt(int k_slotCnt) {
		K_slotCnt = k_slotCnt;
	}

	public List<ProductVO> getProductVoList() {
		return ProductVoList;
	}

	public void setProductVoList(List<ProductVO> productVoList) {
		ProductVoList = productVoList;
	}
}
