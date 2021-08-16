package co.leaf.fit.program.service;

import java.util.List;

import co.leaf.fit.vo.ProgramVO;

public interface ProgramMapper {
	List<ProgramVO> proSelectList();
	List<ProgramVO> proSelect(ProgramVO vo);
	
	int proInsert(ProgramVO vo);
	int proUpdate(ProgramVO vo);
	int proDelete(ProgramVO vo);
}
