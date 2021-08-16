package co.leaf.fit.sales.command;

import java.sql.Date;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.sales.service.SalesService;
import co.leaf.fit.vo.SalesVO;

public class SalPartnerInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		SalesService dao = new SalesService();
		SalesVO vo = new SalesVO();
		vo.setSalParId(Integer.parseInt(request.getParameter("parId")));
		vo.setSalIncome(Integer.parseInt(request.getParameter("salIncome")));
		vo.setSalDate(Date.valueOf(LocalDate.now()));
		vo.setSalFee(vo.getSalIncome()*0.1);
		try {
			dao.salPartnerInsert(vo);
			request.setAttribute("parId", vo.getSalParId());
		} catch(Exception e) {
			return "sales/test";
		}
		return "salPatnerList.do";
	}

}
