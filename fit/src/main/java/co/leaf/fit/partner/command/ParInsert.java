package co.leaf.fit.partner.command;

import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerMapper;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.PartnerVO;

public class ParInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		PartnerMapper dao = new PartnerService();
		PartnerVO vo = new PartnerVO();
		
		SimpleDateFormat format = new SimpleDateFormat ("yyyy-MM-dd");
		String date = format.format(System.currentTimeMillis());
		
		vo.setParEmail(request.getParameter("parEmail"));
		vo.setParPassword(request.getParameter("parPassword"));
		vo.setParName(request.getParameter("parName"));
		vo.setParRegId(Integer.parseInt(request.getParameter("parRegId")));
		vo.setParAddress(request.getParameter("parAddress"));
		vo.setParPhone(request.getParameter("parPhone"));
		vo.setParIntro(request.getParameter("parIntro"));
		vo.setParSubDate(Date.valueOf(date));
		dao.parInsert(vo);
		
		return "partner/insertTest";
	}

}
