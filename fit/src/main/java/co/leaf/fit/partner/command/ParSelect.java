package co.leaf.fit.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerMapper;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.PartnerVO;

public class ParSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		PartnerMapper dao = new PartnerService();
		PartnerVO vo = new PartnerVO();
		
		HttpSession session = request.getSession();
		
		vo = (PartnerVO) session.getAttribute("session");
		
		vo = dao.parSelect(vo);
		
		request.setAttribute("partner", vo);
		
		return "partner/partnerSelect";
	}

}
