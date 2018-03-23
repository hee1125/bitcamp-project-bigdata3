package bigdata3.domain;

import java.sql.Date;

public class BoardCategory {
  private int boardCategoryNo;
  private String category;
  private String boardManager;
  private String boardInformation;
  private Date createDate;
  private String deleteCheck;

  @Override
  public String toString() {
    return "BoardCategory [boardCategoryNo=" + boardCategoryNo + ", category=" + category + ", boardManager="
        + boardManager + ", boardInformation=" + boardInformation + ", createDate=" + createDate + ", deleteCheck="
        + deleteCheck + "]";
  }

  public int getBoardCategoryNo() {
    return boardCategoryNo;
  }

  public void setBoardCategoryNo(int boardCategoryNo) {
    this.boardCategoryNo = boardCategoryNo;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public String getBoardManager() {
    return boardManager;
  }

  public void setBoardManager(String boardManager) {
    this.boardManager = boardManager;
  }

  public String getBoardInformation() {
    return boardInformation;
  }

  public void setBoardInformation(String boardInformation) {
    this.boardInformation = boardInformation;
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
