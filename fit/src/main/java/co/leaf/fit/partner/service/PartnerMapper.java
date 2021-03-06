package co.leaf.fit.partner.service;

import java.util.List;

import co.leaf.fit.vo.PartnerVO;

public interface PartnerMapper {
	
	List<PartnerVO> parSelectList();
	List<PartnerVO> parAdmWaitList();
	
	PartnerVO parSelect(PartnerVO vo);
	PartnerVO parLogin(PartnerVO vo);
	
	int parInsert(PartnerVO vo);
	int parDelete(PartnerVO vo);
	
	int parUpdatePhoto(PartnerVO vo);
	int parUpdateReq(PartnerVO vo);
	int parReqProcess(PartnerVO vo);
	int parReqDone(PartnerVO vo);
	
	List<PartnerVO> parSelectPro(PartnerVO vo);
	List<PartnerVO> parSelectIns(PartnerVO vo);
	
}
