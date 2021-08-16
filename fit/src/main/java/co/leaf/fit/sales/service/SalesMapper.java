package co.leaf.fit.sales.service;

import java.util.List;

import co.leaf.fit.vo.SalesVO;

public interface SalesMapper {
	List<SalesVO> salAdminList();
	List<SalesVO> salAdminDetail();
	List<SalesVO> salPatnerList(SalesVO vo);
	
	int salPartnerInsert(SalesVO vo);
	int salPartnerUpdate(SalesVO vo);
}
