package co.leaf.fit.history.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.program.service.ProgramMapper;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.vo.MemberVO;
import co.leaf.fit.vo.ProgramVO;
import co.leaf.fit.vo.TimetableVO;

public class HisInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		
		MemberMapper memDao = new MemberService();
		MemberVO memVO = new MemberVO();
		memVO = (MemberVO) session.getAttribute("session");
		memVO = memDao.memSelect(memVO);
		request.setAttribute("member", memVO);
		
		ProgramMapper proDao = new ProgramSerivce();
		ProgramVO proVO = new ProgramVO();
		proVO.setProId(Integer.valueOf(request.getParameter("proId")));
		request.setAttribute("detailList", proDao.proSelect(proVO));

		return "history/hisInsertForm";
	}

}
