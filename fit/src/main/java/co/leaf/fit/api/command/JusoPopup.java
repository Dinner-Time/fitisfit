package co.leaf.fit.api.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class JusoPopup implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "api/jusoPopup";
	}

}
