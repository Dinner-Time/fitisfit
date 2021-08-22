package co.leaf.fit.wishlist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.command.MemberEnroll;
import co.leaf.fit.vo.MemberVO;
import co.leaf.fit.vo.WishlistVO;
import co.leaf.fit.wishlist.service.WishlistService;

public class WisInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		WishlistService dao = new WishlistService();
		WishlistVO vo = new WishlistVO();
		MemberVO memVO = (MemberVO) session.getAttribute("session");
		
		vo.setWisMemEmail(memVO.getMemEmail());
		vo.setWisProId(Integer.parseInt(request.getParameter("proId")));
		
		try {
			dao.wisInsert(vo);
			request.setAttribute("error", "");
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "error");
		}
		
		return "wisList.do";
	}

}
