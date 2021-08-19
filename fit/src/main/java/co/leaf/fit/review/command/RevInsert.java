package co.leaf.fit.review.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.review.service.ReviewMapper;
import co.leaf.fit.review.service.ReviewService;
import co.leaf.fit.vo.ReviewVO;
import oracle.sql.DATE;

public class RevInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// revInsertForm에서 받아온 데이터를 실제로 커밋 해주는 클래스
		ReviewMapper dao = new ReviewService();
		ReviewVO vo = new ReviewVO();
		long miliseconds = System.currentTimeMillis();
		
		
		vo.setRevProId(Integer.valueOf(request.getParameter("revProId")));
		vo.setRevContent(request.getParameter("revContent"));;
		vo.setRevScore(3.5);
		vo.setRevDate(new Date(miliseconds));	// 날짜는 자동으로 오늘 날짜 들어감
		vo.setRevWriter("테스트작성자");
		
		int n = dao.revInsert(vo);
		String message = "";
		
		if (n != 0) {
			message = "등록에 성공하였습니다!";
		} else {
			message = "등록에 실패했습니다.";
		}
		
		
		request.setAttribute("message", message);
		return "review/revInsert";
	}

}
