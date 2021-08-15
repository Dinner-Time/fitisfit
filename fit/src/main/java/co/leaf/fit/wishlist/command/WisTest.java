package co.leaf.fit.wishlist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.wishlist.service.WishlistService;

public class WisTest implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		WishlistService dao = new WishlistService();
		request.setAttribute("list", dao.wisSelectList());
		return "wishlist/test2";
	}

}
