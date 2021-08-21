package co.leaf.fit.wishlist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.vo.MemberVO;
import co.leaf.fit.vo.WishlistVO;
import co.leaf.fit.wishlist.service.WishlistService;

public class WisDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		WishlistService dao = new WishlistService();
		WishlistVO vo = new WishlistVO();
		MemberVO mVo = (MemberVO) session.getAttribute("session");
		vo.setWisProId(Integer.parseInt(request.getParameter("proId")));
		vo.setWisMemEmail(mVo.getMemEmail());
		System.out.println(dao.wisDelete(vo));
		return "wisList.do";
	}

}
