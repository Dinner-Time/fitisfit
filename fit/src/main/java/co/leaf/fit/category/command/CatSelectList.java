package co.leaf.fit.category.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.category.service.CategoryService;
import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerService;

public class CatSelectList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 전체 조회
		CategoryService dao = new CategoryService();
		request.setAttribute("list", dao.catSelectList());
		
		return "category/catSelectList";
	}

}
