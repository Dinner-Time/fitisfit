package co.leaf.fit.member.service;

import java.util.List;

import co.leaf.fit.vo.MemberVO;

public interface MemberMapper {
	
	List<MemberVO> memSelectList();
	MemberVO memSelect(MemberVO vo);
	int memInsert(MemberVO vo);
	int memUpdatePassword(MemberVO vo);
	int memUpdatePhone(MemberVO vo);
	int memDelete(MemberVO vo);
	
}
