package co.leaf.fit.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.PartnerVO;

public class MemPartnerSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		PartnerService dao = new PartnerService();
		PartnerVO vo = new PartnerVO();
		
		vo.setParId(Integer.parseInt(request.getParameter("parId")));
		
		vo = dao.parSelect(vo);
		
		request.setAttribute("partner", vo);
		request.setAttribute("proList", dao.parSelectPro(vo));
		request.setAttribute("insList", dao.parSelectIns(vo));
		return "partner/memPartnerSelect";
	}

}
