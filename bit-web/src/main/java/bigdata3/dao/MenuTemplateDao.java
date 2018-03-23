package bigdata3.dao;

import java.util.List;
import java.util.Map;

import bigdata3.domain.MenuTemplate;

public interface MenuTemplateDao {
  public List<MenuTemplate> list(Map<String, Object> tempMap);
  public List<MenuTemplate> menuboard();
  public void insert(MenuTemplate menuTemplate);
  public void sendRequest(MenuTemplate menuTemplate);
  public void update(MenuTemplate menuTemplate);
  public void delete(int menuTempNo);
  public int count();
}
