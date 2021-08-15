package co.leaf.fit.review.service;

import java.util.List;

import co.leaf.fit.vo.ReviewVO;

public interface ReviewMapper {
	
	// 전체 조회
	List<ReviewVO> revSelectList();
	// 한건 조회
	ReviewVO revSelect(ReviewVO vo);
	// 입력
	int revInsert(ReviewVO vo);
	// 수정
	int revUpdate(ReviewVO vo);
	// 삭제
	int revDelete(ReviewVO vo);
	
}
