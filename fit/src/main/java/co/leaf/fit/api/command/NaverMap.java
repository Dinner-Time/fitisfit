package co.leaf.fit.api.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.PartnerVO;

public class NaverMap implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		PartnerService dao = new PartnerService();
		request.setAttribute("list", dao.parSelectList());
		return "api/map";
	}

}
