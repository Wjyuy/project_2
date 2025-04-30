package com.boot.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AnnounceController {

	@GetMapping("/announce")
	public String announceList(Model model){
		List<Map<String, String>> announceList = new ArrayList<>();
		
		return "announce";
	}
}
