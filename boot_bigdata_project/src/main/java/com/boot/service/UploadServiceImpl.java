package com.boot.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.BoardAttachDAO;
import com.boot.dto.BoardAttachDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("UploadService")
public class UploadServiceImpl implements UploadService{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardAttachDTO> getFileList(int boardNo) {
		log.info("@# UploadServiceImpl boardNo=>"+boardNo);
		
		BoardAttachDAO dao=sqlSession.getMapper(BoardAttachDAO.class);
		
		return dao.getFileList(boardNo);
	}

//	폴더에 저장된 파일들 삭제
	@Override
	public void deleteFiles(List<BoardAttachDTO> fileList) {
		log.info("@# deleteFile fileList=>"+fileList);
		
//		파일 없으면 리턴
		if(fileList==null || fileList.size()==0) {
			return;
		}
		
//		파일리스트 요소들 attach로 받음
		fileList.forEach(attach -> {
			try {
//				파일 경로, 이름
				Path file = Paths.get("C:\\develop\\upload"
						+ attach.getUploadPath()+"\\"
						+ attach.getUuid()+"_"
						+ attach.getFileName());
//				파일이 존재하면 삭제
				Files.deleteIfExists(file);
				
				//이미지면 썸네일이 있기때문에 걔도 지워줘야 한다! 
//				이미지인 경우
				if(Files.probeContentType(file).startsWith("image")) {
					Path thumbNail = Paths.get("C:\\develop\\upload"
							+ attach.getUploadPath()+"\\"
							+ attach.getUuid()+"\\s_"
							+ attach.getFileName());
					
					Files.delete(file);
//					.deleteIfExists(thumbNail); 이거 써도 되고 존재하는게확실하면 걍 delete 때려도됨
				}
					
			} catch (Exception e) {
				log.error("deleteFileError! "+e.getMessage());
			}
			
		});
		
	}
	
}




