package co.leaf.fit.wishlist.service;

import java.util.List;

import co.leaf.fit.vo.WishlistVO;

public interface WishlistMapper {
	
	//전체조회
	List<WishlistVO> wisSelectList();
	
	//입력
	int wisInsert(WishlistVO vo);
	
	//삭제
	int wisDelete(WishlistVO vo);
}
