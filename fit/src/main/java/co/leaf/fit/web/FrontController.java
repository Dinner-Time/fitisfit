package co.leaf.fit.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.api.command.JusoPopup;
import co.leaf.fit.api.command.NaverMap;
import co.leaf.fit.category.command.CatSelectList;
import co.leaf.fit.common.Command;
import co.leaf.fit.history.command.HisDelete;
import co.leaf.fit.history.command.HisInsert;
import co.leaf.fit.history.command.HisInsertForm;
import co.leaf.fit.history.command.MypageHistory;
import co.leaf.fit.instructor.command.InsDelete;
import co.leaf.fit.instructor.command.InsInsert;
import co.leaf.fit.instructor.command.InsInsertForm;
import co.leaf.fit.instructor.command.InsSelect;
import co.leaf.fit.instructor.command.InsSelectList;
import co.leaf.fit.instructor.command.InsUpdate;
import co.leaf.fit.instructor.command.InsUpdatePhoto;
import co.leaf.fit.main.command.Main;
import co.leaf.fit.member.command.AdminMemSelect;
import co.leaf.fit.member.command.AdminMemSelectList;
import co.leaf.fit.member.command.MemDelete;
import co.leaf.fit.member.command.MemInsert;
import co.leaf.fit.member.command.MemLogin;
import co.leaf.fit.member.command.MemLoginForm;
import co.leaf.fit.member.command.MemLogout;
import co.leaf.fit.member.command.MemPhotoUpload;
import co.leaf.fit.member.command.MemUpdatePassword;
import co.leaf.fit.member.command.MemberSelect;
import co.leaf.fit.partner.command.MemPartnerSelect;
import co.leaf.fit.partner.command.ParAdmWaitList;
import co.leaf.fit.partner.command.ParInsert;
import co.leaf.fit.partner.command.ParInsertForm;
import co.leaf.fit.partner.command.ParModRequest;
import co.leaf.fit.partner.command.ParReqConfirm;
import co.leaf.fit.partner.command.ParSelect;
import co.leaf.fit.partner.command.ParUpdatePhoto;
import co.leaf.fit.program.command.MemberEnroll;
import co.leaf.fit.program.command.ProAdmWaitList;
import co.leaf.fit.program.command.ProDetail;
import co.leaf.fit.program.command.ProList;
import co.leaf.fit.program.command.ProParSimpleList;
import co.leaf.fit.program.command.ProgramAdd;
import co.leaf.fit.program.command.ProgramAddForm;
import co.leaf.fit.program.command.ProReqConfirm;
import co.leaf.fit.program.command.ProUpdatePhoto;
import co.leaf.fit.program.command.programDetailUser;
import co.leaf.fit.region.command.RegSelectList;
import co.leaf.fit.review.command.RevInsert;
import co.leaf.fit.review.command.RevInsertForm;
import co.leaf.fit.review.command.RevSelectByAdm;
import co.leaf.fit.review.command.RevSelectList;
import co.leaf.fit.review.command.RevSelectListByAdm;
import co.leaf.fit.review.command.RevSelectListByPar;
import co.leaf.fit.wishlist.command.WisDelete;
import co.leaf.fit.wishlist.command.WisInsert;
import co.leaf.fit.wishlist.command.WisList;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> map = new HashMap<String, Command>();
       
    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		// use api
		map.put("/jusoPopup.do", new JusoPopup()); // ?????? api???????????? ??????
		map.put("/NaverMap.do", new NaverMap()); // ????????? ?????? api??? ????????? ??? ?????? ?????? ???????????? ??????
		
		// main page
		map.put("/main.do", new Main()); // home ???????????? ??????
		
		// region page
		map.put("/regSelectList.do", new RegSelectList()); // ????????? ??????????????? ???????????? ???????????? ??????
		
		// category page
		map.put("/catSelectList.do", new CatSelectList()); // ??????????????? ??????????????? ???????????? ???????????? ??????
		
		// history page
		map.put("/hisInsertForm.do", new HisInsertForm());
		map.put("/hisInsert.do", new HisInsert());
		map.put("/mypageHistory.do", new MypageHistory());
		map.put("/hisDelete.do", new HisDelete());
		
		// instructor page
		map.put("/insSelectList.do", new InsSelectList());
		map.put("/insSelect.do", new InsSelect());
		map.put("/insInsertForm.do", new InsInsertForm());
		map.put("/insInsert.do", new InsInsert());
		map.put("/insDelete.do", new InsDelete());
		map.put("/insUpdate.do", new InsUpdate());
		map.put("/insUpdatePhoto.do", new InsUpdatePhoto());
		
		// member page
		map.put("/loginForm.do", new MemLoginForm());
		map.put("/login.do", new MemLogin());
		map.put("/logout.do", new MemLogout());
		map.put("/memInsert.do", new MemInsert());
		map.put("/memSelect.do", new MemberSelect());
		map.put("/memUpdatePassword.do", new MemUpdatePassword());
		map.put("/adminMemSelectList.do", new AdminMemSelectList());
		map.put("/adminMemSelect.do", new AdminMemSelect());
		map.put("/memDelete.do", new MemDelete());
		map.put("/memPhotoUpload.do", new MemPhotoUpload());
		
		// partner page
		map.put("/parInsertForm.do", new ParInsertForm());
		map.put("/parInsert.do", new ParInsert());
		map.put("/parSelect.do", new ParSelect());
		map.put("/memPartnerSelect.do", new MemPartnerSelect());
		map.put("/proParSimpleList.do", new ProParSimpleList());
		map.put("/parUpdatePhoto.do", new ParUpdatePhoto());
		map.put("/parModRequest.do", new ParModRequest());
		
		map.put("/parAdmWaitList.do", new ParAdmWaitList());
		map.put("/parReqConfirm.do", new ParReqConfirm());
		
		// program page
		map.put("/proList.do", new ProList()); // ???????????? ?????? ?????????
		map.put("/proDetail.do", new ProDetail()); // ???????????? ???????????? 
		map.put("/memberEnroll.do", new MemberEnroll()); // ?????? ?????? ?????? ??????
		map.put("/programAddForm.do", new ProgramAddForm()); // ???????????? ?????? ?????????
		map.put("/programAdd.do", new ProgramAdd()); // ???????????? ?????? ??????
		map.put("/proAdmWaitList.do", new ProAdmWaitList());
		map.put("/proReqConfirm.do", new ProReqConfirm());
		map.put("/proUpdatePhoto.do", new ProUpdatePhoto());
		
		map.put("/programDetailUser.do", new programDetailUser());	
		map.put("/hisInsertForm.do", new HisInsertForm());
		
		// review page
		map.put("/revSelectList.do", new RevSelectList());
		map.put("/revSelectListByAdm.do", new RevSelectListByAdm());
		map.put("/revSelectByAdm.do", new RevSelectByAdm());
		map.put("/revSelectListByPar.do", new RevSelectListByPar());
		map.put("/revInsertForm.do", new RevInsertForm());
		map.put("/revInsert.do", new RevInsert());
		
		// wishlist page
		map.put("/wisList.do", new WisList());
		map.put("/wisInsert.do",new WisInsert());
		map.put("/wisDelete.do", new WisDelete());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		
		String viewPage = map.get(path).execute(request, response);
		
		if(!viewPage.endsWith(".do")) {
			viewPage = "WEB-INF/views/" + viewPage + ".jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
