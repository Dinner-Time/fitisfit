package co.leaf.fit.program.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.vo.ProgramVO;

public class MemberEnroll implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ProgramSerivce dao = new ProgramSerivce();
		ProgramVO vo = new ProgramVO();
		vo.setProId(Integer.parseInt(request.getParameter("proId")));
		vo.setProPeople(Integer.parseInt(request.getParameter("proPeople")));
		vo.setProMaxPeople(Integer.parseInt(request.getParameter("proMaxPeople")));
		try {
			System.out.println(dao.proMemberEnroll(vo));
		} catch(Exception e) {
//			e.printStackTrace();
			return "proTest.do";
		}
		request.setAttribute("proId", vo.getProId());
		return "proDetail.do";
	}

}
