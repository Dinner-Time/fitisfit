package co.leaf.fit.wishlist.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.MemberVO;
import co.leaf.fit.vo.WishlistVO;

public class WishlistService implements WishlistMapper {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
    private WishlistMapper map = sqlSession.getMapper(WishlistMapper.class);
	
	@Override
	public List<WishlistVO> wisSelectList(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.wisSelectList(vo);
	}

	@Override
	public int wisInsert(WishlistVO vo) {
		// TODO Auto-generated method stub
		return map.wisInsert(vo);
	}

	@Override
	public int wisDelete(WishlistVO vo) {
		// TODO Auto-generated method stub
		return map.wisDelete(vo);
	}

}
