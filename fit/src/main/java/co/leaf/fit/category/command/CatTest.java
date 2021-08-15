package co.leaf.fit.category.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.category.service.CategoryService;
import co.leaf.fit.common.Command;

public class CatTest implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		CategoryService dao = new CategoryService();
		request.setAttribute("list", dao.catSelectList());
		return "category/test1";
	}

}
