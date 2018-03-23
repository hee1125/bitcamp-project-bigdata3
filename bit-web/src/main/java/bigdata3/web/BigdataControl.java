package bigdata3.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bigdata3.service.BranchService;

@Controller
@RequestMapping("/bigdata")
public class BigdataControl {
	
	@Autowired
	BranchService branchService;


	
	@RequestMapping("analysis")
	public String analysis(HttpSession session, Model model)throws Exception {
		
	

		return "bigdata/analysis";
	}
	
	@RequestMapping("intro")
	public String bigdataintro()throws Exception {
		
	

		return "bigdata/intro";
	}
	
	
}
