package co.leaf.fit.sales.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.sales.service.SalesService;
import co.leaf.fit.vo.SalesVO;

public class SalPatnerList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		SalesService dao = new SalesService();
		SalesVO vo = new SalesVO();
		vo.setSalParId(Integer.parseInt(request.getParameter("parId")));
		request.setAttribute("list", dao.salPatnerList(vo));
		return "sales/salPatnerList";
	}

}
