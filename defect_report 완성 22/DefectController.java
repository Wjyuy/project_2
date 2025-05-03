package com.boot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.dto.Defect_ReportsDTO;
import com.boot.service.DefactService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DefectController {
	@Autowired
    private DefactService defactservice;
	
	
	@RequestMapping("/insertDefect")
	public String insertDefect(Defect_ReportsDTO defect_ReportsDTO) {
		log.info("@# insertDefect()");
		log.info("@# defect_ReportsDTO=>"+defect_ReportsDTO);
		
		defactservice.insertDefect(defect_ReportsDTO);
		
		return "redirect:defect_reports_ok";
	}
	

	
	

	@RequestMapping("/defect_reports")
	public String list(Model model) {
		log.info("@#defect_reports");
		
		return "defect_reports";
	}
	
	@RequestMapping("/defect_reports_ok")
	public String defect_reports_ok(Model model) {
		log.info("@#defect_reports");
		return "defect_reports_ok";
	}
	
	@RequestMapping("/defect_details_check")
	public String defect_details_check(Model model) {
		log.info("@#defect_details_check");
		return "defect_details_check";
	}
	
	@RequestMapping("/defect_list")
	public String defect_list(Model model) {
		log.info("@#defect_list");
		return "defect_list";
	}
//	
}
