package bigdata3.web;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bigdata3.domain.Branch;
import bigdata3.domain.BranchMaster;
import bigdata3.service.BranchMasterService;
import bigdata3.service.BranchService;

@Controller
@RequestMapping("/auth")
public class AuthControl {
	@Autowired
	BranchMasterService branchMasterService;

	@Autowired
	BranchService branchService;

	@RequestMapping("form")
	public void form() {
	}

	@RequestMapping("index")
	public void index() {
	}

	@RequestMapping("login")
	public String login(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		BranchMaster branchMaster = null;

		branchMaster = branchMasterService.getByEmailPassword(email, password);

		String bmgrade = branchMaster.getGrade();

		session.setAttribute("loginBranchMaster", branchMaster);
    
    if(bmgrade.equals("admin")) {
    	return "redirect:../admin/main";
    }
    
    String saveEmail = req.getParameter("saveEmail");
    if (saveEmail != null) {
    	Cookie cookie2 = new Cookie("email", email);
    	cookie2.setMaxAge(60 * 60 * 24 * 7);
    	resp.addCookie(cookie2);
    } else {
    	Cookie cookie2 = new Cookie("email", "");
    	cookie2.setMaxAge(0);
    	resp.addCookie(cookie2);
    }

    return "redirect:../main";
	}

	@RequestMapping("facebooklogin")
	public String facebooklogin(HttpServletRequest req, HttpServletResponse resp, HttpSession session)
			throws Exception {
		Enumeration<String> paramNames = req.getParameterNames();
		while (paramNames.hasMoreElements()) {
			String name = paramNames.nextElement();
			System.out.printf("%s=%s\n", name, req.getParameter(name));
		}
		System.out.println("-------------------------");

		return "redirect:../main";
	}

	@RequestMapping("logout")
	public String logout(HttpServletRequest req) throws Exception {
		req.getSession().invalidate();
		return "redirect:../auth/form";
	}

	@RequestMapping("mypage")
	public String mypage(HttpSession session, Model model) throws Exception {
		BranchMaster branchMaster = (BranchMaster) session.getAttribute("loginBranchMaster");
		List<Branch> branchList = branchService.listByBranchNo(branchMaster.getNo());
		model.addAttribute("branchList", branchList);
		return "auth/mypage";
	}

	@RequestMapping("signup")
	public void signup() {
	}

	@RequestMapping("add")
	public String add(BranchMaster branchMaster) throws Exception {

		branchMasterService.add(branchMaster);
		return "/auth/form";
	}

	@RequestMapping("update")
	public String update(BranchMaster branchMaster) throws Exception {

		branchMasterService.update(branchMaster);
		return "redirect:../main";
	}
}
