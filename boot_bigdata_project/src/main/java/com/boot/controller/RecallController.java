package com.boot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("/test")
	public String list(Model model) {
		log.info("@#test");
		return "test";
	}
	
	@RequestMapping("/recall_list")
	public String recall_list(Criteria cri, Model model) throws Exception {
	    String cntntsId = "0301"; // 네가 사용하는 카테고리 ID
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
	
//    @GetMapping("/proxy")
//    @ResponseBody
//    public String proxy (
//        @RequestParam(value = "cntntsId", defaultValue = "0301") String cntntsId,Criteria cri,Model model
//    ) {
//    	model.addAttribute("pageMaker", new PageDTO(922, cri));
//		log.info("@#cri"+cri);
//		
//        String serviceKey = "PLMG96N58S"; // 발급받은 키
//        String cntPerPage = "10";
//        
//        String apiUrl = "https://www.consumer.go.kr/openapi/recall/contents/index.do"
//                      + "?serviceKey=" + serviceKey
//                      + "&pageNo=" + cri.getPageNum()
//                      + "&cntPerPage=" + cntPerPage
//                      + "&cntntsId=" + cntntsId;
//
//        StringBuilder result = new StringBuilder();
//
//        try {
//            URL url = new URL(apiUrl);
//            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//            conn.setRequestMethod("GET");
//            conn.setRequestProperty("Content-Type", "application/xml; charset=UTF-8");
//
//            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
//            String line;
//            while ((line = rd.readLine()) != null) {
//                result.append(line);
//            }
//            rd.close();
//        } catch (Exception e) {
//            return "<error>API 호출 에러: " + e.toString() + "</error>";
//        }
//
//        return result.toString();
//	}
}
