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
	public int proInsert(ProgramVO vo) {
		return map.proInsert(vo);
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
		// TODO Auto-generated method stub
		return map.proParSimpleList(vo);
	}

}
