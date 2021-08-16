package co.leaf.fit.sales.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.sales.service.SalesService;

public class SalAdminDetail implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		SalesService dao = new SalesService();
		request.setAttribute("list", dao.salAdminDetail());
		return "sales/salAdminDetail";
	}

}
