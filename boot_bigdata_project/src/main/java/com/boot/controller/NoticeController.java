package com.boot.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	
	
	@GetMapping("/notice")
	public String noticeList(Model model) {
		List<Map<String, String>> noticeList = new ArrayList<>();
		
		return "notice";
	}
}
