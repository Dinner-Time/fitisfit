package co.leaf.fit.history.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.history.service.HistoryMapper;
import co.leaf.fit.history.service.HistoryService;
import co.leaf.fit.vo.HistoryVO;

public class HisInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HistoryMapper dao = new HistoryService();
		HistoryVO vo = new HistoryVO();
		
		vo.setHisMemEmail(request.getParameter("hisMemEmail"));
		vo.setHisProId(Integer.valueOf(request.getParameter("hisProId")));
		vo.setHisPeriod(Integer.valueOf(request.getParameter("hisPeriod")));
		vo.setHisPaid(Integer.valueOf(request.getParameter("hisPaid")));
		vo.setHisDate(Date.valueOf(request.getParameter("hisDate")));
		
		int n = dao.hisInsert(vo);
		String message = "";
		
		if (n != 0) {
			message = "결제가 완료되었습니다.";
		} else {
			message = "결제에 실패했습니다.";
		}
		
		request.setAttribute("message", message);
		
		return "history/hisInsert";
	}

}
