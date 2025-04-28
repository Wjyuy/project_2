package com.boot.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ApiController {
	
	@RequestMapping("/test")
	public String list(Model model) {
		log.info("@#test");
		
		return "test";
	}
	@RestController
	public class RecallProxyController {

	    @GetMapping("/proxy")
	    @ResponseBody
	    public String proxy(
	        @RequestParam(value = "cntntsId", defaultValue = "0301") String cntntsId
	    ) {
	        String serviceKey = "PLMG96N58S"; // 발급받은 키
	        String pageNo = "1";
	        String cntPerPage = "10";
	        
	        String apiUrl = "https://www.consumer.go.kr/openapi/recall/contents/index.do"
	                      + "?serviceKey=" + serviceKey
	                      + "&pageNo=" + pageNo
	                      + "&cntPerPage=" + cntPerPage
	                      + "&cntntsId=" + cntntsId;

	        StringBuilder result = new StringBuilder();

	        try {
	            URL url = new URL(apiUrl);
	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	            conn.setRequestMethod("GET");
	            conn.setRequestProperty("Content-Type", "application/xml; charset=UTF-8");

	            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
	            String line;
	            while ((line = rd.readLine()) != null) {
	                result.append(line);
	            }
	            rd.close();
	        } catch (Exception e) {
	            return "<error>API 호출 에러: " + e.toString() + "</error>";
	        }

	        return result.toString();
	    }
	}
}
