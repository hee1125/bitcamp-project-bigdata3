package bigdata3.service;

import java.util.List;

import bigdata3.domain.MenuTemplate;

public interface MenuTemplateService {
  public List<MenuTemplate> list(int startIndex, int pageSize);

  public List<MenuTemplate> menuboard();
  
  public void insert(MenuTemplate menuTemplate);
  
  public void sendRequest(MenuTemplate menuTemplate);

  public void update(MenuTemplate menuTemplate);

  public void delete(int menuTempNo);

  public int count();
}
