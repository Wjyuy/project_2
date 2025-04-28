package com.boot.service;

import java.util.List;

import com.boot.dto.BoardAttachDTO;

public interface UploadService {
	public List<BoardAttachDTO> getFileList(int boardNo);
//	파일 정보들을 여러개 삭제 -> list <boardattachDTO> 
	public void deleteFiles(List<BoardAttachDTO> fileList);
}
