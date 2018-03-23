package bigdata3.service;

import java.util.List;

import bigdata3.domain.MenuConfirm;

public interface MenuConfirmService {
  public List<MenuConfirm> confirmList();
  public MenuConfirm selectByTempNo(int menuTempNo);
  public void update(MenuConfirm menuConfirm);
  public void delete(int menuTempNo);
}
