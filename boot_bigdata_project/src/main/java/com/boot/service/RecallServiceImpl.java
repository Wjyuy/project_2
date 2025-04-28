package com.boot.service;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("RecallService")
public class RecallServiceImpl implements RecallService{
	public String getRecallInfo(String vehicleNumber) {
        String apiUrl = "https://dataapi.co.kr/upload/dLab/20240503-132009-28831.html"; // 실제 API URL
        RestTemplate restTemplate = new RestTemplate();  // RestTemplate 직접 생성

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        // 요청 데이터 생성
        String jsonBody = "{\"vehicleNumber\": \"" + vehicleNumber + "\"}";
        HttpEntity<String> entity = new HttpEntity<>(jsonBody, headers);

        // API 호출
        ResponseEntity<String> response = restTemplate.exchange(apiUrl, HttpMethod.POST, entity, String.class);
        return response.getBody();  // 응답 반환
    }
}
