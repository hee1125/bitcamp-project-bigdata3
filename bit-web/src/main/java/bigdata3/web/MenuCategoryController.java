package bigdata3.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import bigdata3.domain.BranchMaster;
import bigdata3.domain.MenuCategory;
import bigdata3.service.MenuCategoryService;

@Controller
@RequestMapping("/category")
@SessionAttributes("loginBranchMaster")
public class MenuCategoryController {

	@Autowired
	MenuCategoryService menuCategoryService;

	@RequestMapping("new")
	public String regimenu() {
		return "menu/newcategory";
	}

	// 관리자에 등록된 메뉴 정보 출력
	@RequestMapping("list")
	public String list(@RequestParam(defaultValue = "1") int startIndex,
			@RequestParam(defaultValue = "10") int pageSize, Model model) {

		List<MenuCategory> categoryList = menuCategoryService.list(startIndex, pageSize);

		model.addAttribute("categoryList", categoryList);

		return "menu/categorylist";
	}

	@RequestMapping("insert")
	public String insert(MenuCategory category, @ModelAttribute("loginBranchMaster") BranchMaster branchMaster) {
		String manager = branchMaster.getName();
		category.setManager(manager);
		menuCategoryService.insert(category);
		return "redirect:../category/list";
	}

	@RequestMapping("delete")
	public String delete(int mCategoryNo) {
		menuCategoryService.delete(mCategoryNo);
		return "redirect:../category/list";
	}

}
