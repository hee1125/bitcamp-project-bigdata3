package bigdata3.service;

import java.util.List;

import bigdata3.domain.BoardCategory;

public interface BoardCategoryService {

	public List<BoardCategory> list(int startIndex, int pageSize);
	
	public List<BoardCategory> noSize();

	public void insert(BoardCategory boardCategory);

	public void update(BoardCategory boardCategory);

	public void delete(int boardCategoryNo);

}
