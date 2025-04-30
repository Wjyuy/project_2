package com.boot.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.boot.dao.BoardAttachDAO;
import com.boot.dao.BoardDAO;
import com.boot.dao.DefectDAO;
import com.boot.dto.Defect_ReportsDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("DefactService")
public class DefactServiceImpl implements DefactService{
	
	@Autowired
	private SqlSession sqlSession;


	@Override
	public void insertDefect(Defect_ReportsDTO defect_ReportsDTO) {
		log.info("@# DefactServiceImpl Defect_ReportsDTO=>"+defect_ReportsDTO);
		
		DefectDAO dao=sqlSession.getMapper(DefectDAO.class);
		
		dao.insertDefect(defect_ReportsDTO);
		
		
	}


	
}
