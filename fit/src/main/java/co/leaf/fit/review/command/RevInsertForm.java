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
		HistoryVO hisVO = new HistoryVO();
		MemberVO memVO = (MemberVO)session.getAttribute("session");
		hisVO.setHisMemEmail(memVO.getMemEmail());
		hisVO.setHisId(Integer.valueOf(request.getParameter("hisId")));
		
		hisVO = hisDao.hisSelectOne(hisVO);
		
		request.setAttribute("history", hisVO);
		request.setAttribute("proId", hisVO.getHisProId());
		
		return "review/revInsertForm";
	}

}
