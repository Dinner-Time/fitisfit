package co.leaf.fit.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.MemberVO;

public class MemberService implements MemberMapper{
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
    private MemberMapper map = sqlSession.getMapper(MemberMapper.class);

	@Override
	public List<MemberVO> memSelectList() {
		return map.memSelectList();
	}

	@Override
	public MemberVO memSelect(MemberVO vo) {
		return map.memSelect(vo);
	}

	@Override
	public int memInsert(MemberVO vo) {
		return map.memInsert(vo);
	}

	@Override
	public int memUpdatePassword(MemberVO vo) {
		return map.memUpdatePassword(vo);
	}

	@Override
	public int memUpdatePhone(MemberVO vo) {
		return map.memUpdatePhone(vo);
	}

	@Override
	public int memDelete(MemberVO vo) {
		return map.memDelete(vo);
	}

	@Override
	public MemberVO memLogin(MemberVO vo) {
		return map.memLogin(vo);
	}

}
