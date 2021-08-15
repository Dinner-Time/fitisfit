package co.leaf.fit.region.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.RegionVO;

public class RegionService implements RegionMapper {
	private SqlSession sqlSession = DataSource.getInstance().openSession();
	private RegionMapper map = sqlSession.getMapper(RegionMapper.class);
	
	
	@Override
	public List<RegionVO> regSelectList() {
		// TODO Auto-generated method stub
		return map.regSelectList();
	}

	@Override
	public RegionVO regSelect(RegionVO vo) {
		// TODO Auto-generated method stub
		return map.regSelect(vo);
	}

}
