package co.leaf.fit.sales.service;

import java.util.List;

import co.leaf.fit.vo.SalesVO;

public interface SalesMapper {
	List<SalesVO> salSelectList();
	SalesVO salSelect(SalesVO vo);
	
	int salInsert(SalesVO vo);
	int salUpdate(SalesVO vo);
}
