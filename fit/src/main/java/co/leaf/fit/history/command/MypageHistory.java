package co.leaf.fit.history.command;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.history.service.HistoryService;
import co.leaf.fit.vo.HistoryVO;
import co.leaf.fit.vo.MemberVO;

public class MypageHistory implements Command {

	// 마이페이지 수강내역
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		HistoryService hisDao = new HistoryService();
		
//		Calendar cal = Calendar.getInstance(); 
//        Date today = new Date(System.currentTimeMillis());
		
		List<HistoryVO> list = hisDao.hisSelect((MemberVO) session.getAttribute("session"));
		
//		String hisState = "";
//		
//		for (HistoryVO history : list) {
//			Date hisDate = history.getHisDate();
//			int hisPeriod = history.getHisPeriod();
//			cal.setTime(hisDate);
//			cal.add(Calendar.DATE, hisPeriod);
//			Date endDate = (Date)cal.getTime();
//			
//			if (today.after(endDate)) {
//				hisState = "수강완료";
//			} else {
//				hisState = "수강중";
//			}
//			history.setHisState(hisState);
//		}
		
		request.setAttribute("list", list);	
		
		return "member/myPageHistory";
	}

}
