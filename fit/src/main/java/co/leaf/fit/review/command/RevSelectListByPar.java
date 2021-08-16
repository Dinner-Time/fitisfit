package co.leaf.fit.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class RevSelectListByPar implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 해당 업체가 가진 프로그램의 ID를 받아와서, 그 프로그램의 후기를 각각 출력
		
		// 고민중....ㅠ
		
		return "review/revSelectListByPar";
	}

}
