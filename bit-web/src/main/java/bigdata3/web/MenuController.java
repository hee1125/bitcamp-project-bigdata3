package bigdata3.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import bigdata3.dao.MenuDao;
import bigdata3.domain.BranchMaster;
import bigdata3.domain.Menu;
import bigdata3.domain.MenuCategory;
import bigdata3.domain.Upload;
import bigdata3.service.MenuCategoryService;
import bigdata3.service.MenuService;
import bigdata3.service.UploadService;
import bigdata3.utils.FileSystem;
import bigdata3.utils.Paging;

@Controller
@RequestMapping("/menu")
@SessionAttributes("loginBranchMaster")
public class MenuController {

	@Autowired
	MenuService menuService;

	@Autowired
	MenuDao menuDao;

	@Autowired
	MenuCategoryService menuCategoryService;

	@Autowired
	UploadService uploadService;

	@RequestMapping("new")
	public String regimenu(Model model) {
		List<MenuCategory> list = menuCategoryService.noSize();
		System.out.println(list);
		model.addAttribute("list", list);
		return "menu/newmenu";
	}

	// 관리자에 등록된 메뉴 정보 출력
	@RequestMapping("list")
	public String list(@RequestParam(defaultValue = "1") int curPage, Model model) {

		int count = menuService.count();
		Paging paging = new Paging(curPage, count);

		int startIndex = paging.getStart();
		int pageSize = paging.getEnd();

		List<Menu> menuList = menuService.list(startIndex, pageSize);
		System.out.println(menuList);
		model.addAttribute("menuList", menuList);
		model.addAttribute("paging", paging);
		model.addAttribute("count", count);

		return "menu/menulist";
	}

	@RequestMapping("insert")
	public String insert(Menu menu, MultipartFile photo, @ModelAttribute("loginBranchMaster") BranchMaster branchMaster)
			throws Exception {
		FileSystem fileUtil = new FileSystem();
		Upload upload = new Upload();
		if (photo != null && !photo.isEmpty()) {
			String fileName = photo.getOriginalFilename();
			String newFileName = fileUtil.newFileName();
			uploadService.fileUpload(photo, newFileName);
			upload.setFileName(fileName);
			upload.setNewFileName(newFileName);
			menu.setMenuImage(upload);
		}
		String manager = branchMaster.getName();
		menu.setManager(manager);
		System.out.println(menu);
		menuService.insert(menu);
		return "redirect:../menu/list";
	}

	@RequestMapping("update")
	public String update(Menu menu, Model model) {
		menuService.update(menu);
		model.addAttribute("menu", menu);
		return "redirect:../menu/detail";
	}

	@RequestMapping("delete")
	public String delete(int menuNo) {
		System.out.println(menuNo);
		menuService.delete(menuNo);
		return "redirect:../menu/list";
	}

}
