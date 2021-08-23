package co.leaf.fit.partner.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.PartnerVO;

public class PartnerService implements PartnerMapper {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
    private PartnerMapper map = sqlSession.getMapper(PartnerMapper.class);
	
	@Override
	public List<PartnerVO> parSelectList() {
		return map.parSelectList();
	}

	@Override
	public PartnerVO parSelect(PartnerVO vo) {
		return map.parSelect(vo);
	}

	@Override
	public int parInsert(PartnerVO vo) {
		return map.parInsert(vo);
	}


	@Override
	public int parDelete(PartnerVO vo) {
		return map.parDelete(vo);
	}

	@Override
	public PartnerVO parLogin(PartnerVO vo) {
		return map.parLogin(vo);
	}

	@Override
	public int parUpdateReq(PartnerVO vo) {
		return map.parUpdateReq(vo);
	}

	@Override
	public int parReqProcess(PartnerVO vo) {
		return map.parReqProcess(vo);
	}

	@Override
	public int parReqDone(PartnerVO vo) {
		return map.parReqDone(vo);
	}

	@Override
	public List<PartnerVO> parAdmWaitList() {
		return map.parAdmWaitList();
	}

	@Override
	public int parUpdatePhoto(PartnerVO vo) {
		return map.parUpdatePhoto(vo);
	}

}
