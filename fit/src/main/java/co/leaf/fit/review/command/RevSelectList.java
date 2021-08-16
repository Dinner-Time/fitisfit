package co.leaf.fit.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.review.service.ReviewService;

public class RevSelectList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewService dao = new ReviewService();
		request.setAttribute("list", dao.revSelectList());
		return "review/revSelectList";
	}

}
