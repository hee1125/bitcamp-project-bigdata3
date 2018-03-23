package bigdata3.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import bigdata3.domain.BoardCategory;
import bigdata3.domain.BranchMaster;
import bigdata3.service.BoardCategoryService;

@Controller
@RequestMapping("/board/category")
@SessionAttributes("loginBranchMaster")
public class BoardCategoryController {

	@Autowired
	BoardCategoryService boardCategoryService;

	@RequestMapping("list")
	public String info(@RequestParam(defaultValue = "1") int startIndex, @RequestParam(defaultValue = "5") int pageSize,
			Model model) {

		List<BoardCategory> category = boardCategoryService.list(startIndex, pageSize);

		model.addAttribute("category", category);

		return "board/boardlist";
	}

	@RequestMapping("new")
	public String newBoard() {
		return "board/newboard";
	}

	@RequestMapping("insert")
	public String insert(BoardCategory boardCategory, @ModelAttribute("loginBranchMaster") BranchMaster branchMaster) {

		String boardManager = branchMaster.getName();
		System.out.println(boardManager);
		boardCategory.setBoardManager(boardManager);
		System.out.println(boardCategory);
		boardCategoryService.insert(boardCategory);

		return "redirect:../board/list";
	}

}
