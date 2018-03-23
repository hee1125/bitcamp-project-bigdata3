package bigdata3.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import bigdata3.domain.BranchMaster;
import bigdata3.domain.Reply;
import bigdata3.service.ReplyService;

@Controller
@RequestMapping("/reply")
@SessionAttributes("loginBranchMaster")
public class ReplyController {
	@Autowired ReplyService replyService;
	
	@RequestMapping("insert")
	public void write(Reply reply, @ModelAttribute("loginBranchMaster") BranchMaster branchMaster) {
		String replyer = branchMaster.getName();
		reply.setReplyer(replyer);
		replyService.insert(reply);
	}
	
	@RequestMapping("list")
	@ResponseBody
  public List<Reply> list(int boardNo){
      List<Reply> list = replyService.list(boardNo);
      return list;
  }
}
