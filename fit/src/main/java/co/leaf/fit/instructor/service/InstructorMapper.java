package co.leaf.fit.instructor.service;

import java.util.List;

import co.leaf.fit.vo.InstructorVO;

public interface InstructorMapper {
	
	//전체조회
	List<InstructorVO> insSelectList();	
	
	//한건
	InstructorVO insSelect(InstructorVO vo);	
	
	//입력
	int insInsert(InstructorVO vo);	
	
	//수정
	int insUpdate(InstructorVO vo);
	
	//삭제
	int insDelete(InstructorVO vo);
} 
