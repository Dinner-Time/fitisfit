package co.leaf.fit.region.service;

import java.util.List;

import co.leaf.fit.vo.RegionVO;

public interface RegionMapper {
	
	List<RegionVO> regSelectList();	// 전체
	RegionVO regSelect(RegionVO vo);	// 한 건
	int cntProByReg(RegionVO vo);
	
}
