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
import com.boot.dto.DefectListDTO;
import com.boot.dto.PageDTO;
import com.boot.service.BoardService;
import com.boot.service.CommentService;
import com.boot.service.DefectListService;
import com.boot.service.UploadService;
import com.boot.service.UploadServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DefectListController {


	
	@Autowired
	private DefectListService defectListservice;
	

	@RequestMapping("/list_old")
	public String defectList(Model model) {
		log.info("@# defectList()");
		
		ArrayList<DefectListDTO> defectList = defectListservice.defectList();
		model.addAttribute("defectList", defectList);
		
		return "defectList";
	}


}







