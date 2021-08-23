package co.leaf.fit.program.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.timetable.service.TimetableService;
import co.leaf.fit.vo.ProgramVO;
import co.leaf.fit.vo.TimetableVO;

public class ProDetail implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ProgramSerivce proDao = new ProgramSerivce();
		TimetableService timDao = new TimetableService();
		ProgramVO proVO = new ProgramVO();
		TimetableVO timVO = new TimetableVO();
		
		proVO.setProId(Integer.parseInt(request.getParameter("proId")));
		timVO.setTimProId(Integer.parseInt(request.getParameter("proId")));
		
		request.setAttribute("detailList", proDao.proSelect(proVO));
		request.setAttribute("timetable", timDao.timSelect(timVO));
		
		return "program/programDetail";
	}

}
