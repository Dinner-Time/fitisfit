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
import co.leaf.fit.category.command.CatSelect;
import co.leaf.fit.category.command.CatSelectList;
import co.leaf.fit.category.command.CatTest;
import co.leaf.fit.common.Command;
import co.leaf.fit.history.command.HisInsert;
import co.leaf.fit.history.command.HisInsertForm;
import co.leaf.fit.history.command.HisTest;
import co.leaf.fit.history.command.MypageHistory;
import co.leaf.fit.instructor.command.InsInfo;
import co.leaf.fit.instructor.command.InsInsert;
import co.leaf.fit.instructor.command.InsInsertForm;
import co.leaf.fit.instructor.command.InsSelect;
import co.leaf.fit.instructor.command.InsSelectList;
import co.leaf.fit.main.command.Home;
import co.leaf.fit.main.command.Main;
import co.leaf.fit.member.command.AdminMemSelect;
import co.leaf.fit.member.command.AdminMemSelectList;
import co.leaf.fit.member.command.MemInsert;
import co.leaf.fit.member.command.MemLogin;
import co.leaf.fit.member.command.MemLoginForm;
import co.leaf.fit.member.command.MemLogout;
import co.leaf.fit.member.command.MemTest;
import co.leaf.fit.member.command.MemUpdatePassword;
import co.leaf.fit.member.command.MemberSelect;
import co.leaf.fit.partner.command.ParInsert;
import co.leaf.fit.partner.command.ParInsertForm;
import co.leaf.fit.partner.command.ParSelect;
import co.leaf.fit.partner.command.ParTest;
import co.leaf.fit.program.command.MemberEnroll;
import co.leaf.fit.program.command.ProDetail;
import co.leaf.fit.program.command.ProList;
import co.leaf.fit.program.command.ProgramAdd;
import co.leaf.fit.program.command.ProgramAddForm;
import co.leaf.fit.program.command.SelectedPrograms;
import co.leaf.fit.program.command.programDetailUser;
import co.leaf.fit.region.command.RegSelect;
import co.leaf.fit.region.command.RegSelectList;
import co.leaf.fit.region.command.RegTest;
import co.leaf.fit.review.command.RevInsert;
import co.leaf.fit.review.command.RevInsertForm;
import co.leaf.fit.review.command.RevSelectByAdm;
import co.leaf.fit.review.command.RevSelectList;
import co.leaf.fit.review.command.RevSelectListByAdm;
import co.leaf.fit.review.command.RevSelectListByPar;
import co.leaf.fit.sales.command.SalAdminDetail;
import co.leaf.fit.sales.command.SalAdminList;
import co.leaf.fit.sales.command.SalPartnerInsert;
import co.leaf.fit.sales.command.SalPartnerUpdate;
import co.leaf.fit.sales.command.SalPatnerList;
import co.leaf.fit.sales.command.SalTest;
import co.leaf.fit.wishlist.command.WisDelete;
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
		map.put("/jusoPopup.do", new JusoPopup());
		map.put("/NaverMap.do", new NaverMap());	
		
		// home page
		map.put("/home.do", new Home());
		map.put("/main.do", new Main());	
		
		// category page
		map.put("/catTest.do", new CatTest());
		map.put("/catSelect.do", new CatSelect());
		map.put("/catSelectList.do", new CatSelectList());
		
		// history page
		map.put("/hisTest.do", new HisTest());
		map.put("/hisInsertForm.do", new HisInsertForm());
		map.put("/hisInsert.do", new HisInsert());
		map.put("/mypageHistory.do", new MypageHistory());
		
		// instructor page
		map.put("/insSelectList.do", new InsSelectList());
		map.put("/insSelect.do", new InsSelect());
		map.put("/insInsertForm.do", new InsInsertForm());
		map.put("/insInsert.do", new InsInsert());
		map.put("/insInfo.do", new InsInfo());
		
		// member page
		map.put("/memTest.do", new MemTest());
		map.put("/loginForm.do", new MemLoginForm());
		map.put("/login.do", new MemLogin());
		map.put("/logout.do", new MemLogout());
		map.put("/memInsert.do", new MemInsert());
		map.put("/memSelect.do", new MemberSelect());
		map.put("/memUpdatePassword.do", new MemUpdatePassword());
		map.put("/adminMemSelectList.do", new AdminMemSelectList());
		map.put("/adminMemSelect.do", new AdminMemSelect());
		
		// partner page
		map.put("/parTest.do", new ParTest());
		map.put("/parInsertForm.do", new ParInsertForm());
		map.put("/parInsert.do", new ParInsert());
		map.put("/parSelect.do", new ParSelect());
		
		// program page
		map.put("/proList.do", new ProList()); // 프로그램 전체 리스트
		map.put("/proDetail.do", new ProDetail()); // 프로그램 상세보기 
		map.put("/memberEnroll.do", new MemberEnroll()); // 결제 완료 이후 등록
		map.put("/programAddForm.do", new ProgramAddForm()); // 프로그램 추가 페이지
		map.put("/programAdd.do", new ProgramAdd()); // 프로그램 추가 기능
		
		map.put("/programDetailUser.do", new programDetailUser());	
		
		// region page
		map.put("/regTest.do", new RegTest());
		map.put("/regSelect.do", new RegSelect());
		map.put("/regSelectList.do", new RegSelectList());
		
		// review page
		map.put("/revSelectList.do", new RevSelectList());
		map.put("/revSelectListByAdm.do", new RevSelectListByAdm());
		map.put("/revSelectByAdm.do", new RevSelectByAdm());
		map.put("/revSelectListByPar.do", new RevSelectListByPar());
		map.put("/revInsertForm.do", new RevInsertForm());
		map.put("/revInsert.do", new RevInsert());
		
		// sales page 
		map.put("/salTest.do", new SalTest());
		map.put("/salAdminList.do", new SalAdminList()); // 관리자 화면에서 수익 관리
		map.put("/salAdminDetail.do", new SalAdminDetail()); // 관리자 화면에서 수익 자세히보기
		map.put("/salPatnerList.do", new SalPatnerList()); // 파트너 사에서 자기 수익 보기
		map.put("/salPartnerInsert.do", new SalPartnerInsert()); // 파트너 사에서 오늘 수익 정산
		map.put("/salPartnerUpdate.do", new SalPartnerUpdate()); // 파트너 사에서 정산 금액 수정
		
		// timetable page
		
		// wishlist page
		map.put("/wisList.do", new WisList());
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
