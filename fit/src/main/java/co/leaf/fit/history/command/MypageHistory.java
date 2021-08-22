package co.leaf.fit.history.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.history.service.HistoryMapper;
import co.leaf.fit.history.service.HistoryService;
import co.leaf.fit.vo.HistoryVO;
import co.leaf.fit.vo.MemberVO;

public class MypageHistory implements Command {

	// 마이페이지 수강내역
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		HistoryMapper hisDao = new HistoryService();
		
		List<HistoryVO> list = hisDao.hisSelect((MemberVO) session.getAttribute("session"));
		
		request.setAttribute("list", list);	
		
		return "member/myPageHistory";
	}

}
