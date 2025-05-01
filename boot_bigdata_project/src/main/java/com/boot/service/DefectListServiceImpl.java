package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.BoardAttachDAO;
import com.boot.dao.BoardDAO;
import com.boot.dao.DefectListDAO;
import com.boot.dto.BoardDTO;
import com.boot.dto.DefectListDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("DefectListService")
public class DefectListServiceImpl implements DefectListService{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ArrayList<DefectListDTO> defectList() {
		DefectListDAO dao=sqlSession.getMapper(DefectListDAO.class);
		ArrayList<DefectListDTO> defectList = dao.defectList();
		log.info("defectServiceImpl");
		return defectList;
	}



//	@OVERRIDE
//	PUBLIC VOID WRITE(DEFECTLISTDTO DEFECTLISTDTO) {
//		// TODO AUTO-GENERATED METHOD STUB
//		
//	}

//	@Override
////	public void write(HashMap<String, String> param) {
////	파일업로드는 파라미터를 DTO 사용
//	public void write(BoardDTO boardDTO) {
//		log.info("@# BoardServiceImpl boardDTO=>"+boardDTO);
//		
//		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
//		BoardAttachDAO adao=sqlSession.getMapper(BoardAttachDAO.class);
//		
////		dao.write(param);
//		dao.write(boardDTO);
//		
////		첨부파일 있는지 체크
//		log.info("@# getAttachList=>"+boardDTO.getAttachList());
//		if (boardDTO.getAttachList() == null || boardDTO.getAttachList().size() == 0) {
//			log.info("@# null");
//			return;
//		}
//		
////		첨부파일이 있는 경우 처리
//		boardDTO.getAttachList().forEach(attach -> {
//			attach.setBoardNo(boardDTO.getBoardNo());
//			adao.insertFile(attach);
//		});
//	}
	
//	@Override
//	public BoardDTO contentView(HashMap<String, String> param) {
//		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
//		BoardDTO dto = dao.contentView(param);
//		
//		return dto;
//	}
//
//	@Override
//	public void modify(HashMap<String, String> param) {
//		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
//		dao.modify(param);
//	}
//
//	@Override
//	public void delete(HashMap<String, String> param) {
//		log.info("@# BoardServiceImpl delete param=>"+param);
//		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
//		
//		//BoardAttachDAO 에 있던 deleteFile 을 여기서도 쓸 수 있다? ! ! 
//		BoardAttachDAO attachDAO =sqlSession.getMapper(BoardAttachDAO.class); 
//		
//		dao.delete(param);
//		
//		attachDAO.deleteFile(param.get("boardNo"));
//	}

}




