package co.leaf.fit.member.command;

import java.text.SimpleDateFormat;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

public class MemInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberMapper dao = new MemberService();
		MemberVO vo = new MemberVO();
		
		SimpleDateFormat format = new SimpleDateFormat ("yyyy-MM-dd");
		String date = format.format(System.currentTimeMillis());
		
		vo.setMemEmail(request.getParameter("memEmail"));
		vo.setMemPassword(request.getParameter("memPassword"));
		vo.setMemName(request.getParameter("memName"));
		vo.setMemBirth(Date.valueOf(request.getParameter("memBirth")));
		vo.setMemPhone(request.getParameter("memPhone"));
		vo.setMemAddress(request.getParameter("memEmail"));
		vo.setMemGender(request.getParameter("memGender"));
		vo.setMemSubDate(Date.valueOf(date));
		dao.memInsert(vo);
		
		return "member/insertTest";
	}

}
