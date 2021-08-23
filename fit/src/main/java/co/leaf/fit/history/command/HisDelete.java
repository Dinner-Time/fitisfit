package co.leaf.fit.history.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.history.service.HistoryMapper;
import co.leaf.fit.history.service.HistoryService;
import co.leaf.fit.vo.HistoryVO;

public class HisDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HistoryMapper dao = new HistoryService();
		HistoryVO vo = new HistoryVO();
		
		System.out.println(request.getParameter("hisId"));
		vo.setHisId(Integer.valueOf(request.getParameter("hisId")));
		
		dao.hisDelete(vo);
		
		return "mypageHistory.do";
	}

}
