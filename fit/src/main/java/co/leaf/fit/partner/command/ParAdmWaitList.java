package co.leaf.fit.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerService;

public class ParAdmWaitList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("list", new PartnerService().parAdmWaitList());
		return "partner/parAdmWaitList";
	}

}
