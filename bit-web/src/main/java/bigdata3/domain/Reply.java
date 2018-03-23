package bigdata3.domain;

import java.util.Date;

public class Reply {
  private int replyNo;
  private int boardNo;
  private String replyContent;
  private String replyer;
  private Date createDate;

  @Override
  public String toString() {
    return "Reply [replyNo=" + replyNo + ", boardNo=" + boardNo + ", replyContent=" + replyContent + ", replyer="
        + replyer + ", createDate=" + createDate + "]";
  }

  public int getReplyNo() {
    return replyNo;
  }

  public void setReplyNo(int replyNo) {
    this.replyNo = replyNo;
  }

  public int getBoardNo() {
    return boardNo;
  }

  public void setBoardNo(int boardNo) {
    this.boardNo = boardNo;
  }

  public String getReplyContent() {
    return replyContent;
  }

  public void setReplyContent(String replyContent) {
    this.replyContent = replyContent;
  }

  public String getReplyer() {
    return replyer;
  }

  public void setReplyer(String replyer) {
    this.replyer = replyer;
  }

  public Date getCreateDate() {
    return createDate;
  }

  public void setCreateDate(Date createDate) {
    this.createDate = createDate;
  }

}
