package co.leaf.fit.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.PartnerVO;

public class ParReqConfirm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		PartnerService dao = new PartnerService();
		PartnerVO vo = new PartnerVO();
		
		vo.setParId(Integer.parseInt(request.getParameter("parId")));
		vo.setParOriId(Integer.parseInt(request.getParameter("parOriId")));
		
		dao.parReqProcess(vo);
		dao.parReqDone(vo);
		
		request.setAttribute("confirm", "confirm");
		return "parAdmWaitList.do";
	}

}
