package co.leaf.fit.instructor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorMapper;
import co.leaf.fit.instructor.service.InstructorService;
import co.leaf.fit.vo.InstructorVO;

public class InsUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		InstructorMapper dao = new InstructorService();
		InstructorVO vo = new InstructorVO();
		
		vo.setInsId(Integer.valueOf(request.getParameter("insId")));
		vo.setInsPhone(request.getParameter("insPhone"));
		vo.setInsInsta(request.getParameter("insInsta"));
		vo.setInsKakao(request.getParameter("insKakao"));
		vo.setInsHistory(request.getParameter("insHistory"));
		
		dao.insUpdate(vo);
		
		return "insSelect.do";
	}

}
