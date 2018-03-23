package bigdata3.dao;

import java.awt.Menu;
import java.util.List;
import java.util.Map;

import bigdata3.domain.MenuCategory;

public interface MenuCategoryDao {
  public List<MenuCategory> list(Map<String, Object> menuMap);
  
  public List<MenuCategory> noneSize();
  
  public Menu selectOne(int mCategoryNo);

  public List<MenuCategory> noSize();

  public void insert(MenuCategory category);

  public void delete(int mCategoryNo);

  public int count();
}
