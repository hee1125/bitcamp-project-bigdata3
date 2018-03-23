package bigdata3.dao;

import java.util.List;
import java.util.Map;

import bigdata3.domain.BoardCategory;

public interface BoardCategoryDao {
	public List<BoardCategory> list(Map<String, Object> categoryMap);
	
	public List<BoardCategory> noSize();

	public void insert(BoardCategory boardCategory);

	public void update(BoardCategory boardCategory);

	public void delete(int boardCategoryNo);
}
