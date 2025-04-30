package com.boot.dto;

import java.sql.Timestamp;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DefectListDTO {
	private int id;
	private String reporter_name;
	private String car_model;
	private String report_type;
	private Timestamp report_date;
	
//	private List<BoardAttachDTO> attachList;
	
}
