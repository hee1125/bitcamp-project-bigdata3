package bigdata3.dao;

import java.util.List;

import bigdata3.domain.MenuConfirm;

public interface MenuConfirmDao {
  public List<MenuConfirm> confirmList();
  public MenuConfirm selectByTempNo(int menuTempNo);
  public void update(MenuConfirm menuConfirm);
  public void delete(int menuTempNo);
}
