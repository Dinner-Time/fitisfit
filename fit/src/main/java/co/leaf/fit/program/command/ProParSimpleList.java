package co.leaf.fit.program.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.vo.PartnerVO;
import co.leaf.fit.vo.ProgramVO;

public class ProParSimpleList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		ProgramSerivce dao = new ProgramSerivce();
		ProgramVO vo = new ProgramVO();
		PartnerVO parVO = (PartnerVO) session.getAttribute("session");
		try {
			vo.setProParId(parVO.getParId());
			System.out.println(vo.getProParId());
			request.setAttribute("list", dao.proParSimpleList(vo));
		} catch(Exception e) {
			e.printStackTrace();
			return "main.do";
		}
		
		return "program/proParSimpleList";
	}

}
