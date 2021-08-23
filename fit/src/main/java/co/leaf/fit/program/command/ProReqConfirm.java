package co.leaf.fit.program.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.vo.ProgramVO;

public class ProReqConfirm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ProgramSerivce dao = new ProgramSerivce();
		ProgramVO vo = new ProgramVO();
		
		vo.setProId(Integer.parseInt(request.getParameter("proId")));
		vo.setProOriId(Integer.parseInt(request.getParameter("proOriId")));
		
		if(vo.getProId() != vo.getProOriId()) {
			dao.proReqProcess(vo);
		}
		dao.proReqDone(vo);
		
		request.setAttribute("confirm", "confirm");
		return "proAdmWaitList.do";
	}

}
