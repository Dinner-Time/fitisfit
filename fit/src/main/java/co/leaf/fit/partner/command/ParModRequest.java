package co.leaf.fit.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.PartnerVO;

public class ParModRequest implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		PartnerService dao = new PartnerService();
		PartnerVO vo = (PartnerVO) session.getAttribute("session");
		
		vo.setParRegId(Integer.parseInt(request.getParameter("parRegId")));
		vo.setParName(request.getParameter("parName"));
		vo.setParPhone(request.getParameter("parPhone"));
		vo.setParAddress(request.getParameter("roadFullAddr"));
		vo.setParIntro(request.getParameter("parIntro"));
		vo.setParOriId(vo.getParId());
		
		try {
			dao.parUpdateReq(vo);
			request.setAttribute("reqSuccess", "success");
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("reqFail", "fail");
		}
		return "parSelect.do";
	}

}
