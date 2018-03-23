package bigdata3.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bigdata3.dao.MenuDao;
import bigdata3.dao.MenuFileDao;
import bigdata3.domain.Menu;
import bigdata3.domain.Upload;
import bigdata3.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	MenuDao menuDao;

	@Autowired
	MenuFileDao menuFileDao;

	@Override
	public List<Menu> list(int startIndex, int pageSize) {
		HashMap<String, Object> menuMap = new HashMap<>();
		menuMap.put("startIndex", (startIndex - 1) * pageSize);
		menuMap.put("pageSize", pageSize);
		return menuDao.list(menuMap);
	}

	@Override
	public List<Menu> noneSize() {
		return menuDao.noneSize();
	}
	
	

	@Override
  public List<Menu> selectByType(String menuType) {
	  HashMap<String, Object> menuMap = new HashMap<>();
	  menuMap.put("menuType", menuType);
    return menuDao.selectByType(menuMap);
  }

	@Override
	public void insert(Menu menu) {
		menuDao.insert(menu);
		Upload upload = menu.getMenuImage();
		upload.setMenuNo(menu.getMenuNo());
		menuFileDao.insert(upload);
	}

	@Override
	public void update(Menu menu) {
		menuDao.update(menu);
	}

	@Override
	public void delete(int menuNo) {
		menuDao.delete(menuNo);
	}

	@Override
	public int count() {
		return menuDao.count();
	}

}
