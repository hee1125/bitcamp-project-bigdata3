package bigdata3.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bigdata3.dao.MenuTemplateDao;
import bigdata3.domain.MenuTemplate;
import bigdata3.service.MenuTemplateService;

@Service
public class MenuTemplateServiceImpl implements MenuTemplateService {

  @Autowired
  MenuTemplateDao menuTemplateDao;

  @Override
  public List<MenuTemplate> list(int startIndex, int pageSize) {
    HashMap<String, Object> tempMap = new HashMap<>();
    tempMap.put("startIndex", (startIndex - 1) * pageSize);
    tempMap.put("pageSize", pageSize);
    return menuTemplateDao.list(tempMap);
  }

  @Override
  public List<MenuTemplate> menuboard() {
    return menuTemplateDao.menuboard();
  }

  @Override
  public void insert(MenuTemplate menuTemplate) {
    menuTemplateDao.insert(menuTemplate);
  }

  @Override
  public void sendRequest(MenuTemplate menuTemplate) {
    menuTemplateDao.sendRequest(menuTemplate);
  }

  @Override
  public void update(MenuTemplate menuTemplate) {
    menuTemplateDao.update(menuTemplate);
  }

  @Override
  public void delete(int menuTemplateNo) {
    menuTemplateDao.delete(menuTemplateNo);
  }

  @Override
  public int count() {
    return menuTemplateDao.count();
  }

}
