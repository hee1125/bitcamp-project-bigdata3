package bigdata3.dao;

import java.util.List;
import java.util.Map;

import bigdata3.domain.Board;

public interface BoardDao {
  public List<Board> list(Map<String, Object> boardMap);

  public Board selectOne(int boardNo);

  public List<Board> selectByUser(Map<String, Object> searchMap);

  public void insert(Board board);

  public void update(Board board);

  public void delete(int boardNo);

  public int count();

  public int writerCount(Map<String, Object> writerMap);

  public void increaseHit(int boardNo);
}
