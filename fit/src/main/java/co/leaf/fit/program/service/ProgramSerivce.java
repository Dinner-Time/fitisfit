package co.leaf.fit.program.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.ProgramVO;

public class ProgramSerivce implements ProgramMapper{
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ProgramMapper map = sqlSession.getMapper(ProgramMapper.class);

	@Override
	public List<ProgramVO> proSelectList() {
		return map.proSelectList();
	}

	@Override
	public List<ProgramVO> proSelect(ProgramVO vo) {
		return map.proSelect(vo);
	}

	@Override
	public int proInsertReq(ProgramVO vo) {
		return map.proInsertReq(vo);
	}

	@Override
	public int proUpdate(ProgramVO vo) {
		return map.proUpdate(vo);
	}

	@Override
	public int proDelete(ProgramVO vo) {
		return map.proDelete(vo);
	}

	@Override
	public int proMemberEnroll(ProgramVO vo) {
		return map.proMemberEnroll(vo);	
	}

	@Override
	public List<ProgramVO> proRegSimpleList(ProgramVO vo) {
		return map.proRegSimpleList(vo);
	}

	@Override
	public List<ProgramVO> proCatSimpleList(ProgramVO vo) {
		return map.proCatSimpleList(vo);
	}

	@Override
	public List<ProgramVO> proParSimpleList(ProgramVO vo) {
		return map.proParSimpleList(vo);
	}

	@Override
	public List<ProgramVO> proAdmWaitList() {
		return map.proAdmWaitList();
	}

	@Override
	public int proReqProcess(ProgramVO vo) {
		return map.proReqProcess(vo);
	}

	@Override
	public int proReqDone(ProgramVO vo) {
		return map.proReqDone(vo);
	}

	@Override
	public int proUpdatePhoto(ProgramVO vo) {
		return map.proUpdatePhoto(vo);
	}

	@Override
	public ProgramVO proSimpleSelect(ProgramVO vo) {
		return map.proSimpleSelect(vo);
	}

	@Override
	public int proEnrollCancel(ProgramVO vo) {
		return map.proEnrollCancel(vo);
	}
	
	
}
