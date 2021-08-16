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
	public int parUpdateBefore(PartnerVO vo) {
		return 0;
	}

	@Override
	public int parUpdateAfter(PartnerVO vo) {
		return 0;
	}

	@Override
	public int parUpdate(PartnerVO vo) {
		return 0;
	}

	@Override
	public int parDelete(PartnerVO vo) {
		return map.parDelete(vo);
	}

}
