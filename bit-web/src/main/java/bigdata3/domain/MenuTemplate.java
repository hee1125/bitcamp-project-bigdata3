package bigdata3.domain;

import java.sql.Date;

public class MenuTemplate extends Menu {
	// 여기에 지점 참조해야함
	private int menuTempNo;
	private int branchNo;
	private String branchName;
	private String menuArea;
	private String menuTempType;
	private String menuName;
	private String menuType;
	private String menuPrice;
	private String menuContent;
	private String image;
	private Date createDate;
	private String deleteCheck;

	@Override
	public String toString() {
		return "MenuTemplate [menuTempNo=" + menuTempNo + ", branchNo=" + branchNo + ", branchName=" + branchName
				+ ", menuArea=" + menuArea + ", menuTempType=" + menuTempType + ", menuName=" + menuName + ", menuType="
				+ menuType + ", menuPrice=" + menuPrice + ", menuContent=" + menuContent + ", image=" + image
				+ ", createDate=" + createDate + ", deleteCheck=" + deleteCheck + "]";
	}

	public int getMenuTempNo() {
		return menuTempNo;
	}

	public void setMenuTempNo(int menuTempNo) {
		this.menuTempNo = menuTempNo;
	}

	public int getBranchNo() {
		return branchNo;
	}

	public void setBranchNo(int branchNo) {
		this.branchNo = branchNo;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getMenuArea() {
		return menuArea;
	}

	public void setMenuArea(String menuArea) {
		this.menuArea = menuArea;
	}

	public String getMenuTempType() {
		return menuTempType;
	}

	public void setMenuTempType(String menuTempType) {
		this.menuTempType = menuTempType;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuType() {
		return menuType;
	}

	public void setMenuType(String menuType) {
		this.menuType = menuType;
	}

	public String getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String getMenuContent() {
		return menuContent;
	}

	public void setMenuContent(String menuContent) {
		this.menuContent = menuContent;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getDeleteCheck() {
		return deleteCheck;
	}

	public void setDeleteCheck(String deleteCheck) {
		this.deleteCheck = deleteCheck;
	}

}
