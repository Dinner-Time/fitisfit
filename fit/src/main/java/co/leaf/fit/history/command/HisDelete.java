package co.leaf.fit.history.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.history.service.HistoryMapper;
import co.leaf.fit.history.service.HistoryService;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.vo.HistoryVO;
import co.leaf.fit.vo.ProgramVO;

public class HisDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HistoryMapper dao = new HistoryService();
		ProgramSerivce proDao = new ProgramSerivce();
		HistoryVO vo = new HistoryVO();
		ProgramVO proVO = new ProgramVO();
		
		System.out.println(request.getParameter("hisId"));
		vo.setHisId(Integer.valueOf(request.getParameter("hisId")));
		
		if(dao.hisDelete(vo) > 0) {;
			proVO.setProId(Integer.parseInt(request.getParameter("hisProId")));
			proDao.proEnrollCancel(proVO);
		}
		
		return "mypageHistory.do";
	}

}
