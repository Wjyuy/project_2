package com.boot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.dto.Criteria;
import com.boot.dto.Defect_DetailsDTO;
import com.boot.dto.PageDTO;
import com.boot.service.RecallService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class RecallController {
	@Autowired
    private RecallService recallService;
	
	@RequestMapping("/recall_statics")
	public String recall_statics( 
			@RequestParam(required = false) Integer startYear,
		    @RequestParam(required = false) Integer endYear,
		    Model model) {
		
		log.info("@#recall_statics");
		int count = recallService.getdefect_reports_count(startYear, endYear);
		 model.addAttribute("count", count);
		
		return "recall_statics";
	}
	
	@RequestMapping("/recall_list")
	public String recall_list(Criteria cri, Model model) throws Exception {
	    String cntntsId = "0301"; 
	    List<Defect_DetailsDTO> list = recallService.getProductList(cri, cntntsId);
	    //923개의 리콜이 xml 92개로 나눠져 있어서 일단 하드코딩했다
//	    int total = recallService.getTotalCount(cri, cntntsId);
	    int total = 923;

	    model.addAttribute("recall_list", list);
	    model.addAttribute("pageMaker", new PageDTO(total, cri));
	    
	    log.info("@#"+cri);
	    log.info("@#list : "+list);
	    log.info("@#total : "+total);
	    log.info("@# : "+new PageDTO(total, cri));
	    
		return "recall_list";
	}
	
	
}
