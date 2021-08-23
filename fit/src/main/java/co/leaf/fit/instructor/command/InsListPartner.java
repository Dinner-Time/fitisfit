package co.leaf.fit.instructor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorService;
import co.leaf.fit.vo.InstructorVO;
import co.leaf.fit.vo.PartnerVO;

public class InsListPartner implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		InstructorService dao = new InstructorService();
		InstructorVO vo = new InstructorVO();
		PartnerVO parVO = (PartnerVO) session.getAttribute("session");
		
		vo.setInsParId(parVO.getParId());
		
		request.setAttribute("list", dao.insListPartner(vo));;
		
		return "instructor/insListPartner";
	}

}
