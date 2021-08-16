package co.leaf.fit.review.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.ReviewVO;

public class ReviewService implements ReviewMapper {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);
	
	@Override
	public List<ReviewVO> revSelectList() {
		return map.revSelectList();
	}

	@Override
	public ReviewVO revSelect(ReviewVO vo) {
		return map.revSelect(vo);
	}

	@Override
	public int revInsert(ReviewVO vo) {
		return map.revInsert(vo);
	}

	@Override
	public int revUpdate(ReviewVO vo) {
		return map.revUpdate(vo);
	}

	@Override
	public int revDelete(ReviewVO vo) {
		return map.revDelete(vo);
	}

}
