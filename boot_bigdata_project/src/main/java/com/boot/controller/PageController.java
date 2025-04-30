package com.boot.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.dto.BoardDTO;
import com.boot.dto.Criteria;
import com.boot.dto.PageDTO;
import com.boot.service.PageService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
//@RequestMapping("/comment")
public class PageController {
	@Autowired
	private PageService service;
	
	@RequestMapping("/list")
	public String list(Criteria cri,Model model) {
		log.info("@# list 페이징 친구입니덩 *^^*()");
		log.info("@# cri=> "+cri);
		
		//이것도 되는데 다른 방법으로 한다
//		model.addAttribute("list", service.listWithPaging(cri));
//		model.addAttribute("pageMaker", new PageDTO(service.getTotalCount(), cri));
		
		//뭐시여 똑같자너
		ArrayList<BoardDTO> list = service.listWithPaging(cri);
		int total = service.getTotalCount(cri);
		log.info("@# total=> "+total);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageDTO(total, cri));
		log.info("@# : "+new PageDTO(total, cri));
		
		return "list";
	}
}















