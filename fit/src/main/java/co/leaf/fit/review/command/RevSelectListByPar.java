package co.leaf.fit.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.review.service.ReviewService;
import co.leaf.fit.vo.PartnerVO;
import co.leaf.fit.vo.ProgramVO;
import co.leaf.fit.vo.ReviewVO;

public class RevSelectListByPar implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 해당 업체가 가진 프로그램의 ID를 받아와서, 그 프로그램의 후기를 각각 출력
		ReviewService dao = new ReviewService();
		ReviewVO vo = new ReviewVO();
		ProgramVO vo2 = new ProgramVO();

		HttpSession session = request.getSession();
		PartnerVO par = (PartnerVO)session.getAttribute("session");
		
		par.setParId(1);
		vo2.setProParId(1);
		
		request.setAttribute("list", dao.revSelectPar(vo));

		return "review/revSelectListByPar";
	}

}
