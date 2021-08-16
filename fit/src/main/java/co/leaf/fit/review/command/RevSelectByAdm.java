package co.leaf.fit.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.review.service.ReviewMapper;
import co.leaf.fit.review.service.ReviewService;
import co.leaf.fit.vo.ReviewVO;

public class RevSelectByAdm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewMapper dao = new ReviewService();
		ReviewVO vo = new ReviewVO();
		
		vo.setRevId(Integer.valueOf(request.getParameter("revId")));
		request.setAttribute("review", dao.revSelect(vo));
		
		return "review/revSelectByAdm";
	}

}
