package co.leaf.fit.timetable.service;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.TimetableVO;

public class TimetableService implements TimetableMapper{
	
	private SqlSession sqlSession = DataSource.getInstance().openSession();
	private TimetableMapper map = sqlSession.getMapper(TimetableMapper.class);

	@Override
	public TimetableVO timSelect(TimetableVO vo) {
		return map.timSelect(vo);
	}

	@Override
	public int timInsert(TimetableVO vo) {
		return map.timInsert(vo);
	}

	@Override
	public int timUpdate(TimetableVO vo) {
		return map.timUpdate(vo);
	}

	@Override
	public int timDelete(TimetableVO vo) {
		return map.timDelete(vo);
	}

}
