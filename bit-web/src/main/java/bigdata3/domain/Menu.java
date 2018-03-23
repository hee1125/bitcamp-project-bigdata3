package bigdata3.domain;

import java.sql.Date;

public class Menu extends MenuCategory {
	private int menuNo;
	private String menuName;
	private String menuType;
	private String menuPrice;
	private String menuContent;
	private Date createDate;
	private String deleteCheck;
	private Upload menuImage;

	@Override
	public String toString() {
		return "Menu [menuNo=" + menuNo + ", menuName=" + menuName + ", menuType=" + menuType + ", menuPrice="
				+ menuPrice + ", menuContent=" + menuContent + ", createDate=" + createDate + ", deleteCheck="
				+ deleteCheck + ", menuImage=" + menuImage + "]";
	}

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
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

	public Upload getMenuImage() {
		return menuImage;
	}

	public void setMenuImage(Upload menuImage) {
		this.menuImage = menuImage;
	}

}
