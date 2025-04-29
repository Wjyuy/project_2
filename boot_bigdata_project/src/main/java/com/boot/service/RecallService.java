package com.boot.service;

import java.util.List;

import com.boot.dto.Criteria;
import com.boot.dto.Defect_DetailsDTO;

public interface RecallService {
    List<Defect_DetailsDTO> getProductList(Criteria cri, String cntntsId) throws Exception;
    int getTotalCount(Criteria cri, String cntntsId) throws Exception;
}
