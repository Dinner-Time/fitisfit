package co.leaf.fit.history.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class MypageHistory implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "history/mypageHistory";
	}

}
