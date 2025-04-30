package com.boot.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecallStaticDAO {
	int getdefect_reports_count(Map<String, Object> params);
}















