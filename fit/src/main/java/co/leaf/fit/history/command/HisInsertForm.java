package co.leaf.fit.history.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class HisInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원 정보를 먼저 뿌려주고
		
		
		// Insert할 내역도 뿌려줌
		
		
		return "history/hisInsertForm";
	}

}
