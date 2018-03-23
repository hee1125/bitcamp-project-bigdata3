package bigdata3.service;

import java.util.List;

import bigdata3.domain.Menu;

public interface MenuService {
	public List<Menu> list(int startIndex, int pageSize);
	
	public List<Menu> noneSize();
	
	public List<Menu> selectByType(String menuType);

	public void insert(Menu menu);

	public void update(Menu menu);

	public void delete(int menuNo);

	public int count();
}
