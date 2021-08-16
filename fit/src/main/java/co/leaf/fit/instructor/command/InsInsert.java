package co.leaf.fit.instructor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorService;
import co.leaf.fit.vo.InstructorVO;

public class InsInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		InstructorService dao = new InstructorService();
		InstructorVO vo = new InstructorVO();
		vo.setInsPhoto(request.getParameter("insPhoto"));
		vo.setInsName(request.getParameter("insName"));
		vo.setInsPhone(request.getParameter("insPhone"));
		vo.setInsGender(request.getParameter("insGender"));
		vo.setInsInsta(request.getParameter("insInsta"));
		vo.setInsKakao(request.getParameter("insKakao"));
		vo.setInsHistory(request.getParameter("insHistory"));
		vo.setInsParId(Integer.valueOf(request.getParameter("insParId")));
		int n = dao.insInsert(vo);
		String page="";
		if(n!=0){
			page = "insSelectList.do";
			
		}
		return page;
	}

}
