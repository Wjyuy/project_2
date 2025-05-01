package com.boot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.boot.dto.BoardAttachDTO;
import com.boot.dto.BoardDTO;
import com.boot.dto.CommentDTO;
import com.boot.dto.PageDTO;
import com.boot.service.BoardService;
import com.boot.service.CommentService;
import com.boot.service.UploadService;
import com.boot.service.UploadServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {

	@Autowired
	private BoardService service;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private UploadService uploadService;

//	@RequestMapping("/list")
	@RequestMapping("/list_old")
	public String list(Model model) {
		log.info("@# list()_old");
		
		ArrayList<BoardDTO> list = service.list();
		model.addAttribute("list", list);
		
		return "list";
	}
	
	@RequestMapping("/write")
//	public String write(@RequestParam HashMap<String, String> param) {
	public String write(BoardDTO boardDTO) {
		log.info("@# write()");
		log.info("@# boardDTO=>"+boardDTO);
		
		if (boardDTO.getAttachList() != null) {
			boardDTO.getAttachList().forEach(attach -> log.info("@# attach=>"+attach));
		}
		
//		service.write(param);
		service.write(boardDTO);
		
		return "redirect:list";
	}
	
	@RequestMapping("/write_view")
	public String write_view() {
		log.info("@# write_view()");
		
		return "write_view";
	}
	
	@RequestMapping("/content_view")
	public String content_view(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# content_view()");
		log.info("@# param: "+param);
		
		BoardDTO dto = service.contentView(param);
		model.addAttribute("content_view", dto);
		
//		content_view.jsp 에서 pageMaker 를 가지고 페이징 처리 
		model.addAttribute("pageMaker", param);
		
		// 해당 게시글에 작성된 댓글 리스트를 가져옴
		ArrayList<CommentDTO> commentList = commentService.findAll(param);
		model.addAttribute("commentList", commentList);
		
		return "content_view";
	}
	
	@RequestMapping("/modify")
//	public String modify(@RequestParam HashMap<String, String> param) {
//	RedirectAttributes : get 방식을 뒤에 붙여준다 ? 
	public String modify(@RequestParam HashMap<String, String> param,RedirectAttributes rttr) {
		log.info("@# modify()");
//		@# param: {boardNo=260, pageNum=5, amount=10, boardName=kim260ad, boardTitle=260appleadd, boardContent=content_260ad}
		log.info("@# param: "+param);
		service.modify(param);
		
		rttr.addAttribute("pageNum", param.get("pageNum"));
		rttr.addAttribute("amount", param.get("amount"));
		
		return "redirect:list";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam HashMap<String, String> param,RedirectAttributes rttr) {
		log.info("@# delete()");
		log.info("@# param(보드넘버가 필요해용) "+param);
		log.info("@# param.get(\"boardNo\") => "+param.get("boardNo"));
		
		List<BoardAttachDTO> fileList = uploadService.getFileList(Integer.parseInt(param.get("boardNo")));
		log.info("@# delete _ fileList = > "+fileList);
		
//		게시글 삭제 , 댓글 삭제 
		service.delete(param);
//		폴더삭제
		uploadService.deleteFiles(fileList);
		
		rttr.addAttribute("pageNum", param.get("pageNum"));
		rttr.addAttribute("amount", param.get("amount"));
		
		return "redirect:list";
	}
}







