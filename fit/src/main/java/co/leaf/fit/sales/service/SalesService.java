package co.leaf.fit.sales.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.SalesVO;

public class SalesService implements SalesMapper{
	
	private SqlSession sqlSession = DataSource.getInstance().openSession();
	private SalesMapper map = sqlSession.getMapper(SalesMapper.class);
	
	@Override
	public List<SalesVO> salAdminList() {
		// TODO Auto-generated method stub
		return map.salAdminList();
	}
	@Override
	public List<SalesVO> salAdminDetail(SalesVO vo) {
		// TODO Auto-generated method stub
		return map.salAdminDetail(vo);
	}
	@Override
	public List<SalesVO> salPatnerList(SalesVO vo) {
		// TODO Auto-generated method stub
		return map.salPatnerList(vo);
	}
	@Override
	public int salInsert(SalesVO vo) {
		// TODO Auto-generated method stub
		return map.salInsert(vo);
	}
	@Override
	public int salUpdate(SalesVO vo) {
		// TODO Auto-generated method stub
		return map.salUpdate(vo);
	}
	
	}
