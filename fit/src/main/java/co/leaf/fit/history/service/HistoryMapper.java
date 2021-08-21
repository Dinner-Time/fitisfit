package co.leaf.fit.history.service;

import java.util.List;

import co.leaf.fit.vo.HistoryVO;
import co.leaf.fit.vo.MemberVO;

public interface HistoryMapper {
	
	// 관리자 전체 조회
	List<HistoryVO> hisSelectList();
	// 회원 한명의 내역 전체 조회
	List<HistoryVO> hisSelect(MemberVO vo);
	// 회원 한명의 한건 조회
	HistoryVO hisSelectOne(MemberVO vo, int hisId);
	// 입력
	int hisInsert(HistoryVO vo);
	// 수정
	int hisUpdate(HistoryVO vo);
	// 삭제
	int hisDelete(HistoryVO vo);
	
	
}
