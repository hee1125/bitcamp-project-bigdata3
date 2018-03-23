package bigdata3.service;

import java.util.List;

import bigdata3.domain.Menu;
import bigdata3.domain.MenuCategory;

public interface MenuCategoryService {
	public List<MenuCategory> list(int startIndex, int pageSize);
	
	public List<MenuCategory> noneSize();

	public List<MenuCategory> noSize();

	public void insert(MenuCategory category);

	public void delete(int mCategoryNo);

	public int count();
}
