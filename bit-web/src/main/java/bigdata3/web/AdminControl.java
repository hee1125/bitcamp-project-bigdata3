package bigdata3.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bigdata3.domain.Branch;
import bigdata3.domain.Event;
import bigdata3.service.BranchMasterService;
import bigdata3.service.BranchService;
import bigdata3.service.EventService;


@Controller
@RequestMapping("/admin")
public class AdminControl {
	@Autowired
	BranchMasterService branchMasterService;
	
	@Autowired
	EventService eventService;
	
	@Autowired
	BranchService branchService;
	
	@RequestMapping("main")
	public void main() {
		
	}
	
	@RequestMapping("eventconfirm")
	public String eventConfirmPage(int no, Model model) throws Exception {
		Event event = eventService.get(no);
		if (event == null) {
			throw new Exception(no + "번 회원이 없습니다.");
		}
		model.addAttribute("event", event);
		return "admin/eventconfirm";

	}
	
	@RequestMapping("eventlist")
	public String eventList(@RequestParam(defaultValue = "1") int pageNo, @RequestParam(defaultValue = "20") int pageSize,
			Model model) throws Exception {

		List<Event> eventList = eventService.list(pageNo, pageSize);
		model.addAttribute("list", eventList);

		return "admin/eventlist";
	}
	
	@RequestMapping("branchlist")
	public String branchList(@RequestParam(defaultValue = "1") int pageNo, @RequestParam(defaultValue = "20") int pageSize,
			Model model) throws Exception {

		List<Branch> list = branchService.list(pageNo, pageSize);
		model.addAttribute("list", list);

		return "admin/branchlist";
	}
	
	@RequestMapping("branchinfo")
	public String detail(int no, Model model) throws Exception {
		Branch branch = branchService.get(no);
		if (branch == null) {
			throw new Exception(no + "번 회원이 없습니다.");
		}
		model.addAttribute("branch", branch);
		return "admin/branchinfo";

	}

}
