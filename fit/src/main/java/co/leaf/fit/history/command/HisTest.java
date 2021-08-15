package co.leaf.fit.history.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.history.service.HistoryService;

public class HisTest implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HistoryService dao = new HistoryService();
		request.setAttribute("list", dao.hisSelectList());
		return "history/historyTest";
	}

}
