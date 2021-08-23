package co.leaf.fit.instructor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.vo.PartnerVO;

public class InsInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		PartnerVO parVO = (PartnerVO) session.getAttribute("session");
		
		session.setAttribute("partner", parVO);
		
		return "instructor/insInsertForm";
	}

}
