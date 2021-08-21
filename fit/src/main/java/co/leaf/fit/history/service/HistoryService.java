package co.leaf.fit.history.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.HistoryVO;
import co.leaf.fit.vo.MemberVO;

public class HistoryService implements HistoryMapper {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private HistoryMapper map = sqlSession.getMapper(HistoryMapper.class);
	
	@Override
	public List<HistoryVO> hisSelectList() {
		return map.hisSelectList();
	}

	@Override
	public List<HistoryVO> hisSelect(MemberVO vo) {
		return map.hisSelect(vo);
	}

	@Override
	public int hisInsert(HistoryVO vo) {
		return map.hisInsert(vo);
	}

	@Override
	public int hisUpdate(HistoryVO vo) {
		return map.hisUpdate(vo);
	}

	@Override
	public int hisDelete(HistoryVO vo) {
		return map.hisDelete(vo);
	}

}
