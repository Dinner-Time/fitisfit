package co.leaf.fit.program.service;

import java.util.List;

import co.leaf.fit.vo.ProgramVO;

public interface ProgramMapper {
	List<ProgramVO> proRegSimpleList(ProgramVO vo);
	List<ProgramVO> proCatSimpleList(ProgramVO vo);
	List<ProgramVO> proParSimpleList(ProgramVO vo);
	List<ProgramVO> proAdmWaitList();
	
	List<ProgramVO> proSelectList();
	List<ProgramVO> proSelect(ProgramVO vo);
	
	ProgramVO proSimpleSelect(ProgramVO vo);
	int proInsertReq(ProgramVO vo);
	int proUpdate(ProgramVO vo);
	int proMemberEnroll(ProgramVO vo);
	int proDelete(ProgramVO vo);
	
	int proUpdatePhoto(ProgramVO vo);
	
	int proReqProcess(ProgramVO vo);
	int proReqDone(ProgramVO vo);
	
	int proEnrollCancel(ProgramVO vo);
}
