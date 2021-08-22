package co.leaf.fit.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.review.service.ReviewService;
import co.leaf.fit.vo.PartnerVO;
import co.leaf.fit.vo.ReviewVO;

public class RevSelectListByPar implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 해당 업체가 가진 프로그램의 ID를 받아와서, 그 프로그램의 후기를 각각 출력
		//HttpSession session = request.getSession();
		//PartnerVO par = (PartnerVO)session.getAttribute("session");
		
//		ReviewService dao = new ReviewService();
//		ReviewVO vo = new ReviewVO();
//		vo.setRevProId(Integer.valueOf(request.getParameter("revProId")));
//		vo = dao.revSelect(vo);
//		request.setAttribute("list", vo);
		
		return "review/revSelectListByPar";
	}

}
