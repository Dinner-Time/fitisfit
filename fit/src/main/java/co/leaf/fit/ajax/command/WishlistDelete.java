package co.leaf.fit.ajax.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.vo.MemberVO;
import co.leaf.fit.vo.WishlistVO;
import co.leaf.fit.wishlist.service.WishlistService;

@WebServlet("/WishlistDelete")
public class WishlistDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public WishlistDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		WishlistService dao = new WishlistService();
		WishlistVO vo = new WishlistVO();
		MemberVO mVo = (MemberVO) session.getAttribute("session");
		vo.setWisProId(Integer.parseInt(request.getParameter("proId")));
		vo.setWisMemEmail(mVo.getMemEmail());
		dao.wisDelete(vo);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
