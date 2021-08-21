package co.leaf.fit.region.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class RegSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("regId", request.getParameter("regId"));
		return "region/regSelect";
	}

}
