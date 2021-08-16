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
import co.leaf.fit.review.command.RevSelectByAdm;
import co.leaf.fit.review.command.RevSelectList;
import co.leaf.fit.common.Command;
import co.leaf.fit.history.command.HisInsert;
import co.leaf.fit.history.command.HisInsertForm;
import co.leaf.fit.history.command.HisTest;
import co.leaf.fit.instructor.command.InsTest;
import co.leaf.fit.main.command.Home;
import co.leaf.fit.member.command.MemTest;
import co.leaf.fit.partner.command.ParTest;
import co.leaf.fit.program.command.ProDetail;
import co.leaf.fit.program.command.ProTest;
import co.leaf.fit.region.command.RegTest;
import co.leaf.fit.review.command.RevSelectListByAdm;
import co.leaf.fit.review.command.RevSelectListByPar;
import co.leaf.fit.review.command.RevTest;
import co.leaf.fit.sales.command.SalTest;
import co.leaf.fit.timetable.command.TimTest;
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
		map.put("/hisInsertForm.do", new HisInsertForm());
		map.put("/hisInsert.do", new HisInsert());
		
		// instructor page
		map.put("/insTest.do", new InsTest());
		
		// member page
		map.put("/memTest.do", new MemTest());
		
		// partner page
		map.put("/parTest.do", new ParTest());
		
		// program page
		map.put("/proTest.do", new ProTest());
		map.put("/proDetail.do", new ProDetail());
		
		// region page
		map.put("/regTest.do", new RegTest());
		
		// review page
		map.put("/revSelectList.do", new RevSelectList());
		map.put("/revSelectListByAdm.do", new RevSelectListByAdm());
		map.put("/revSelectByAdm.do", new RevSelectByAdm());
		map.put("/revSelectListByPar.do", new RevSelectListByPar());
		
		// sales page 
		map.put("/salTest.do", new SalTest());
		
		// timetable page
		map.put("/timTest.do", new TimTest());
		
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
