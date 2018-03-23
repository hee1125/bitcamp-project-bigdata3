package bigdata3.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bigdata3.dao.BoardDao;
import bigdata3.dao.BoardFileDao;
import bigdata3.domain.Board;
import bigdata3.domain.Upload;
import bigdata3.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

  @Autowired
  BoardDao boardDao;

  @Autowired
  BoardFileDao boardFileDao;

  @Override
  public List<Board> list(int startIndex, int pageSize) {
    HashMap<String, Object> boardMap = new HashMap<>();
    boardMap.put("startIndex", (startIndex - 1) * pageSize);
    boardMap.put("pageSize", pageSize);
    return boardDao.list(boardMap);
  }

  @Override
  public List<Board> selectByUser(int startIndex, int pageSize, String boardWriter) {
    HashMap<String, Object> searchMap = new HashMap<>();
    searchMap.put("startIndex", (startIndex-1)*pageSize);
    searchMap.put("pageSize", pageSize);
    searchMap.put("boardWriter", boardWriter);
    return boardDao.selectByUser(searchMap);
  }

  @Override
  public int writerCount(String boardWriter) {
    HashMap<String, Object> writerMap = new HashMap<>();
    writerMap.put("boardWriter", boardWriter);
    return boardDao.writerCount(writerMap);
  }

  @Override
  public Board detail(int boardNo) {
    return boardDao.selectOne(boardNo);
  }

  @Override
  public void insert(Board board) {
    boardDao.insert(board);

    List<Upload> uploadList = board.getFileNames();
    for (Upload upload : uploadList) {
      upload.setBranchNo(board.getBoardNo());
      boardFileDao.insert(upload);
    }
  }

  @Override
  public void update(Board board) {
    boardDao.update(board);
  }

  @Override
  public void delete(int boardNo) {
    boardDao.delete(boardNo);
  }

  @Override
  public int count() {
    return boardDao.count();
  }

  @Override
  public void increaseHit(int boardNo, HttpSession session) {
    long clickTime = 0;
    if (session.getAttribute("clickTime_" + boardNo) != null) {
      clickTime = (long) session.getAttribute("clickTime_" + boardNo);
    }

    long curTime = System.currentTimeMillis();
    if (curTime - clickTime > 1 * 1000) {
      boardDao.increaseHit(boardNo);
      session.setAttribute("clickTime" + boardNo, curTime);
    }
  }

}
