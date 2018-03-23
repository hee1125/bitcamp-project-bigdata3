package bigdata3.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import bigdata3.domain.Board;
import bigdata3.domain.BoardCategory;
import bigdata3.domain.BranchMaster;
import bigdata3.domain.Upload;
import bigdata3.service.BoardCategoryService;
import bigdata3.service.BoardService;
import bigdata3.service.UploadService;
import bigdata3.utils.FileSystem;
import bigdata3.utils.Paging;

@Controller
@RequestMapping("/board")
@SessionAttributes("loginBranchMaster")
public class BoardController {

  @Autowired
  BoardService boardService;

  @Autowired
  BoardCategoryService boardCategoryService;

  @Autowired
  UploadService uploadService;

  @RequestMapping("new")
  public String writeform(Model model) {

    List<BoardCategory> category = boardCategoryService.noSize();
    model.addAttribute("category", category);
    return "board/writeform";
  }

  @RequestMapping("list")
  public String notice(@RequestParam(defaultValue = "1") int curPage, Model model) {

    int count = boardService.count();

    Paging paging = new Paging(curPage, count);

    int startIndex = paging.getStart();
    int pageSize = paging.getEnd();

    List<Board> boardList = boardService.list(startIndex, pageSize);
    System.out.println(boardList);
    model.addAttribute("boardList", boardList);
    model.addAttribute("count", count);
    model.addAttribute("paging", paging);

    return "board/articlelist";
  }

  @RequestMapping("myarticle")
  public String myarticle(@RequestParam(defaultValue = "1") int curPage, 
      Model model,
      @ModelAttribute("loginBranchMaster") BranchMaster branchMaster) {

    int count = boardService.count();

    Paging paging = new Paging(curPage, count);
    
    String boardWriter = branchMaster.getName();
    
    int startIndex = paging.getStart();
    int pageSize = paging.getEnd();
    List<Board> searchList = boardService.selectByUser(startIndex, pageSize, boardWriter);
    System.out.println(searchList);
    model.addAttribute("searchList", searchList);
    model.addAttribute("count", count);
    model.addAttribute("paging", paging);

    return "board/articlelist";
  }

  @RequestMapping("insert")
  public String write(Board board, @ModelAttribute("loginMaster") BranchMaster branchMaster, MultipartFile[] file)
      throws Exception {

    FileSystem fileSystem = new FileSystem();
    Upload upload = new Upload();

    ArrayList<Upload> uploadList = new ArrayList<>();
    for (MultipartFile fileItem : file) {
      if (fileItem != null) {
        String fileName = fileItem.getOriginalFilename();
        String newFileName = fileSystem.newFileName();
        upload.setFileName(fileName);
        upload.setNewFileName(newFileName);
        uploadService.fileUpload(fileItem, newFileName);
        uploadList.add(upload);
      }
    }

    System.out.println(branchMaster);
    String boardWriter = branchMaster.getName();
    board.setBoardWriter(boardWriter);
    boardService.insert(board);
    return "redirect:../board/list";
  }

  @RequestMapping("update")
  public String update(Board board, Model model) {
    boardService.update(board);
    model.addAttribute("board", board);
    return "redirect:../board/detail";
  }

  @RequestMapping("detail")
  public String detail(int boardNo, Model model, HttpSession session) {
    boardService.increaseHit(boardNo, session);
    Board board = boardService.detail(boardNo);
    model.addAttribute("board", board);
    return "board/detailform";
  }

  @RequestMapping("delete")
  public String delete(int boardNo) {
    boardService.delete(boardNo);
    return "redirect:../board/notice";
  }
}
