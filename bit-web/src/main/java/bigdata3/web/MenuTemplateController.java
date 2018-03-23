package bigdata3.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import bigdata3.domain.Branch;
import bigdata3.domain.Menu;
import bigdata3.domain.MenuConfirm;
import bigdata3.domain.MenuTemplate;
import bigdata3.service.BranchService;
import bigdata3.service.MenuCategoryService;
import bigdata3.service.MenuConfirmService;
import bigdata3.service.MenuService;
import bigdata3.service.MenuTemplateService;

@Controller
@RequestMapping("/menuboard")
@SessionAttributes("loginBranchMaster")
public class MenuTemplateController {

	@Autowired
	MenuTemplateService menuTemplateService;

	@Autowired
	MenuCategoryService menuCategoryService;

	@Autowired
	MenuService menuService;

	@Autowired
	BranchService branchService;

	@Autowired
	MenuConfirmService menuConfirmService;

	@RequestMapping("new")
	public String newtemplate(Model model) throws Exception {
		List<Branch> branchList = branchService.noSize();
		List<Menu> menuList = menuService.noneSize();
		model.addAttribute("branchList", branchList);
		System.out.println(menuList);
		model.addAttribute("menuList", menuList);

		return "template/newtemplate";
	}

	@RequestMapping("confirm")
	public String eventConfirmPage(Model model) throws Exception {

		List<MenuConfirm> confirmList = menuConfirmService.confirmList();
		System.out.println(confirmList);
		model.addAttribute("confirmList", confirmList);
		System.out.println(model);
		return "template/confirmlist";
	}
	
	@RequestMapping("confirmmenu")
	public String confirmmenu(Model model, int menuTempNo) {
		
		MenuConfirm confirmList = menuConfirmService.selectByTempNo(menuTempNo);
		model.addAttribute("confirmList", confirmList);
		
		return "redirect:../menuboard/confirm";
	}

	@RequestMapping("requestmenu")
	public String request(Model model) throws Exception {
		List<Branch> branchList = branchService.noSize();
		List<Menu> menuList = menuService.noneSize();
		System.out.println(menuList);
		model.addAttribute("branchList", branchList);
		model.addAttribute("menuList", menuList);
		return "template/requestmenu";
	}

	@RequestMapping("sendrequest")
	public String send(MenuTemplate menuTemplate) {
		System.out.println(menuTemplate);
		menuTemplateService.sendRequest(menuTemplate);
		return "redirect:../menuboard/requestmenu";
	}

	// 관리자에 등록된 메뉴 정보 출력
	@RequestMapping("list")
	public String list(@RequestParam(defaultValue = "1") int startIndex, @RequestParam(defaultValue = "6") int pageSize,
			Model model) {
		List<MenuTemplate> menuBoard = menuTemplateService.list(startIndex, pageSize);
		model.addAttribute("menuBoard", menuBoard);
		return "template/menuboard";
	}

	@RequestMapping("board")
	public String list(Model model) {
		List<MenuTemplate> menuBoard = menuTemplateService.menuboard();
		model.addAttribute("menuBoard", menuBoard);
		return "template/menuboard";
	}

	@RequestMapping("insert")
	public String insert(MenuTemplate menuTemplate) throws Exception {
		menuTemplateService.insert(menuTemplate);
		return "redirect:../menuboard/new";
	}

	@RequestMapping("update")
	public String update(MenuTemplate menuTemplate) {
		menuTemplateService.update(menuTemplate);
		return "redirect:../menu/detail";
	}

	@RequestMapping("delete")
	public String delete(int menuTempNo) {
		menuTemplateService.delete(menuTempNo);
		return "redirect:../menu/list";
	}

}
