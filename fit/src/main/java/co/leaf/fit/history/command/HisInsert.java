package co.leaf.fit.history.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.history.service.HistoryMapper;
import co.leaf.fit.history.service.HistoryService;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.vo.HistoryVO;
import co.leaf.fit.vo.MemberVO;
import co.leaf.fit.vo.ProgramVO;

public class HisInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HistoryMapper dao = new HistoryService();
		HistoryVO vo = new HistoryVO();
		long miliseconds = System.currentTimeMillis();
		
		MemberVO member = new MemberVO();
		HttpSession session = request.getSession();
		member = (MemberVO) session.getAttribute("session");
		
		vo.setHisMemEmail(member.getMemEmail());
		vo.setHisProId(Integer.valueOf(request.getParameter("hisProId")));
		vo.setHisPeriod(Integer.valueOf(request.getParameter("hisPeriod")));
		vo.setHisPaid(Integer.valueOf(request.getParameter("hisPaid")));
		vo.setHisDate(new Date(miliseconds));
		
		int n = dao.hisInsert(vo);
		String message = "";
		
		if (n != 0) {
			ProgramSerivce proDao = new ProgramSerivce();
			ProgramVO proVO = new ProgramVO();
			proVO.setProId(vo.getHisProId());
			proDao.proMemberEnroll(proVO);
			message = "결제가 완료되었습니다.";
		} else {
			message = "결제에 실패했습니다.";
		}
		
		request.setAttribute("message", message);
		
		return "member/myPageHistory";
	}

}
