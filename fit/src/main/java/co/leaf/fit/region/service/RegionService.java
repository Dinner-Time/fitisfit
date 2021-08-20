package co.leaf.fit.region.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.RegionVO;

public class RegionService implements RegionMapper {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private RegionMapper map = sqlSession.getMapper(RegionMapper.class);
	
	
	@Override
	public List<RegionVO> regSelectList() {
		return map.regSelectList();
	}

	@Override
	public RegionVO regSelect(RegionVO vo) {
		return map.regSelect(vo);
	}

	// 지역을 선택하면 그 지역의 프로그램 갯수를 출력
	@Override
	public int cntProByReg(RegionVO vo) {
		return map.cntProByReg(vo);
	}

}
