package co.leaf.fit.instructor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorService;
import co.leaf.fit.vo.InstructorVO;
import co.leaf.fit.vo.PartnerVO;

public class InsSelectList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		InstructorService dao = new InstructorService();
		InstructorVO vo = new InstructorVO();
		PartnerVO par = (PartnerVO) session.getAttribute("session");
		
		vo.setInsParId(par.getParId());
		request.setAttribute("list", dao.insSelectList(vo));
		return "instructor/insSelectList";
	}

}
