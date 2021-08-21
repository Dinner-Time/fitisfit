package co.leaf.fit.wishlist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.vo.MemberVO;
import co.leaf.fit.wishlist.service.WishlistService;

public class WisList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		WishlistService dao = new WishlistService();
		
		request.setAttribute("list", dao.wisSelectList((MemberVO) session.getAttribute("session")));
		return "wishlist/wishlist";
	}

}
