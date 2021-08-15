package co.leaf.fit.partner.service;

import java.util.List;

import co.leaf.fit.vo.PartnerVO;

public interface PartnerMapper {
	
	List<PartnerVO> parSelectList();
	PartnerVO parSelect(PartnerVO vo);
	int parInsert(PartnerVO vo);
	int parUpdateBefore(PartnerVO vo);
	int parUpdateAfter(PartnerVO vo);
	int parUpdate(PartnerVO vo);
	int parDelete(PartnerVO vo);

}
