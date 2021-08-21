package co.leaf.fit.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.history.service.HistoryMapper;
import co.leaf.fit.history.service.HistoryService;
import co.leaf.fit.vo.HistoryVO;
import co.leaf.fit.vo.MemberVO;

public class RevInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		HistoryMapper hisDao = new HistoryService();
		HistoryVO vo = new HistoryVO();
		
		vo = hisDao.hisSelectOne((MemberVO)session.getAttribute("session"), Integer.valueOf(request.getParameter("hisId")));
		
		request.setAttribute("history", vo);
		
		return "review/revInsertForm";
	}

}
