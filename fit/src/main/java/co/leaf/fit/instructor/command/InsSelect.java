package co.leaf.fit.instructor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorService;
import co.leaf.fit.vo.InstructorVO;

public class InsSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		InstructorService dao = new InstructorService();
		InstructorVO vo = new InstructorVO();
		vo.setInsId(Integer.valueOf(request.getParameter("insId")));
		vo = dao.insSelect(vo);
		request.setAttribute("ins", vo);
		return "instructor/insSelect";
	}

}
