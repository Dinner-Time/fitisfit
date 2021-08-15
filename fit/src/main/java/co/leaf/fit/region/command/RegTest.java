package co.leaf.fit.region.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.region.service.RegionService;

public class RegTest implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		RegionService dao = new RegionService();
		request.setAttribute("list", dao.regSelectList());
		return "region/test2";
	}

}
