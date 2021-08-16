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

import co.leaf.fit.category.command.CatTest;
import co.leaf.fit.common.Command;
import co.leaf.fit.history.command.HisTest;
import co.leaf.fit.instructor.command.InsTest;
import co.leaf.fit.main.command.Home;
import co.leaf.fit.member.command.MemTest;
import co.leaf.fit.partner.command.ParTest;
import co.leaf.fit.program.command.MemberEnroll;
import co.leaf.fit.program.command.ProDetail;
import co.leaf.fit.program.command.ProList;
import co.leaf.fit.program.command.ProgramAdd;
import co.leaf.fit.program.command.ProgramAddForm;
import co.leaf.fit.region.command.RegTest;
import co.leaf.fit.review.command.RevTest;
import co.leaf.fit.sales.command.SalAdminDetail;
import co.leaf.fit.sales.command.SalAdminList;
import co.leaf.fit.sales.command.SalPartnerInsert;
import co.leaf.fit.sales.command.SalPartnerUpdate;
import co.leaf.fit.sales.command.SalPatnerList;
import co.leaf.fit.sales.command.SalTest;
import co.leaf.fit.wishlist.command.WisTest;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> map = new HashMap<String, Command>();
       
    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		// home page
		map.put("/home.do", new Home());
		
		// category page
		map.put("/catTest.do", new CatTest());
		
		// history page
		map.put("/hisTest.do", new HisTest());
		
		// instructor page
		map.put("/insTest.do", new InsTest());
		
		// member page
		map.put("/memTest.do", new MemTest());
		
		// partner page
		map.put("/parTest.do", new ParTest());
		
		// program page
		map.put("/proList.do", new ProList()); // 프로그램 전체 리스트
		map.put("/proDetail.do", new ProDetail()); // 프로그램 상세보기 
		map.put("/memberEnroll.do", new MemberEnroll()); // 결제 완료 이후 등록
		map.put("/programAddForm.do", new ProgramAddForm()); // 프로그램 추가 페이지
		map.put("/programAdd.do", new ProgramAdd()); // 프로그램 추가 기능
		
		// region page
		map.put("/regTest.do", new RegTest());
		
		// review page
		map.put("/revTest.do", new RevTest());
		
		// sales page 
		map.put("/salTest.do", new SalTest());
		map.put("/salAdminList.do", new SalAdminList()); // 관리자 화면에서 수익 관리
		map.put("/salAdminDetail.do", new SalAdminDetail()); // 관리자 화면에서 수익 자세히보기
		map.put("/salPatnerList.do", new SalPatnerList()); // 파트너 사에서 자기 수익 보기
		map.put("/salPartnerInsert.do", new SalPartnerInsert()); // 파트너 사에서 오늘 수익 정산
		map.put("/salPartnerUpdate.do", new SalPartnerUpdate()); // 파트너 사에서 정산 금액 수정
		
		// timetable page
		
		// wishlist page
		map.put("/wisTest.do", new WisTest());
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
