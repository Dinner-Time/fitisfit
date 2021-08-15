package co.leaf.fit.sales.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.SalesVO;

public class SalesService implements SalesMapper{
	
	private SqlSession sqlSession = DataSource.getInstance().openSession();
	private SalesMapper map = sqlSession.getMapper(SalesMapper.class);
	
	@Override
	public List<SalesVO> salSelectList() {
		return map.salSelectList();
	}

	@Override
	public SalesVO salSelect(SalesVO vo) {
		return map.salSelect(vo);
	}

	@Override
	public int salInsert(SalesVO vo) {
		return map.salInsert(vo);
	}

	@Override
	public int salUpdate(SalesVO vo) {
		return map.salUpdate(vo);
	}

}
