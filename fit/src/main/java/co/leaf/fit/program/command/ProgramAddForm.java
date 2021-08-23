package co.leaf.fit.program.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorMapper;
import co.leaf.fit.instructor.service.InstructorService;
import co.leaf.fit.vo.InstructorVO;
import co.leaf.fit.vo.PartnerVO;

public class ProgramAddForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		PartnerVO parVO = (PartnerVO)session.getAttribute("session");
		InstructorVO insVO = new InstructorVO();
		InstructorMapper insDao = new InstructorService();
		
		insVO.setInsParId(parVO.getParId());
		
		request.setAttribute("insList", insDao.insListPartner(insVO));
		
		return "program/programAddForm";
	}

}
