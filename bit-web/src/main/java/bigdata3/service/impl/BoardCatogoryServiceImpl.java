package bigdata3.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bigdata3.dao.BoardCategoryDao;
import bigdata3.domain.BoardCategory;
import bigdata3.service.BoardCategoryService;

@Service
public class BoardCatogoryServiceImpl implements BoardCategoryService {

  @Autowired
  BoardCategoryDao boardCategoryDao;

  @Override
  public List<BoardCategory> list(int startIndex, int pageSize) {

    HashMap<String, Object> categoryMap = new HashMap<>();
    categoryMap.put("startIndex", (startIndex - 1) * pageSize);
    categoryMap.put("pageSize", pageSize);
    return boardCategoryDao.list(categoryMap);
  }

  @Override
  public List<BoardCategory> noSize() {
    return boardCategoryDao.noSize();
  }

  @Override
  public void insert(BoardCategory boardCategory) {
    boardCategoryDao.insert(boardCategory);
  }

  @Override
  public void update(BoardCategory boardCategory) {
    boardCategoryDao.update(boardCategory);
  }

  @Override
  public void delete(int boardCategoryNo) {
    boardCategoryDao.delete(boardCategoryNo);
  }

}
