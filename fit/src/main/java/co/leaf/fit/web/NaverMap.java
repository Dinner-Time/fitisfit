package co.leaf.fit.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class NaverMap implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "api/map";
	}

}
