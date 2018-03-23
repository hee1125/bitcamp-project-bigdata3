package bigdata3.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bigdata3.dao.MenuCategoryDao;
import bigdata3.domain.MenuCategory;
import bigdata3.service.MenuCategoryService;

@Service
public class MenuCategoryServiceImpl implements MenuCategoryService {

  @Autowired
  MenuCategoryDao menuCategoryDao;

  @Override
  public List<MenuCategory> list(int startIndex, int pageSize) {
    HashMap<String, Object> menuMap = new HashMap<>();
    menuMap.put("startIndex", (startIndex - 1) * pageSize);
    menuMap.put("pageSize", pageSize);
    return menuCategoryDao.list(menuMap);
  }

  @Override
  public List<MenuCategory> noneSize() {
    return menuCategoryDao.noneSize();
  }

  @Override
  public List<MenuCategory> noSize() {
    return menuCategoryDao.noSize();
  }

  @Override
  public void insert(MenuCategory category) {
    menuCategoryDao.insert(category);
  }

  @Override
  public void delete(int mCategoryNo) {
    menuCategoryDao.delete(mCategoryNo);
  }

  @Override
  public int count() {
    return menuCategoryDao.count();
  }

}
