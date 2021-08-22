package co.leaf.fit.history.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class HisInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("hisProId", request.getParameter("hisProId"));
		return "history/hisInsertForm";
	}

}
