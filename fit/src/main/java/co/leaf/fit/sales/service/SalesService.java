package co.leaf.fit.sales.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.SalesVO;

public class SalesService implements SalesMapper{
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private SalesMapper map = sqlSession.getMapper(SalesMapper.class);
	
	@Override
	public List<SalesVO> salAdminList() {
		// TODO Auto-generated method stub
		return map.salAdminList();
	}
	@Override
	public List<SalesVO> salAdminDetail() {
		// TODO Auto-generated method stub
		return map.salAdminDetail();
	}
	@Override
	public List<SalesVO> salPatnerList(SalesVO vo) {
		// TODO Auto-generated method stub
		return map.salPatnerList(vo);
	}
	@Override
	public int salPartnerInsert(SalesVO vo) {
		// TODO Auto-generated method stub
		return map.salPartnerInsert(vo);
	}
	@Override
	public int salPartnerUpdate(SalesVO vo) {
		// TODO Auto-generated method stub
		return map.salPartnerUpdate(vo);
	}
	
	}
