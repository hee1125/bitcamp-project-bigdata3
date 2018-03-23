package bigdata3.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import bigdata3.domain.Board;

public interface BoardService {
  public List<Board> list(int startIndex, int pageSize);
  
  public List<Board> selectByUser(int startIndex, int pageSize, String boardWriter);

  public Board detail(int boardNo);

  public void insert(Board board);

  public void update(Board board);

  public void delete(int boardNo);

  public int count();
  
  public int writerCount(String boardWriter);
  
  public void increaseHit(int boardNo, HttpSession session);
  
}
