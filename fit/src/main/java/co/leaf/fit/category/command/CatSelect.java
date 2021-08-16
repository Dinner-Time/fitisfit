package co.leaf.fit.category.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.category.service.CategoryService;
import co.leaf.fit.common.Command;
import co.leaf.fit.vo.CategoryVO;

public class CatSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 한 건 조회 
		CategoryService dao = new CategoryService();
		CategoryVO vo = new CategoryVO();
		
		
		return "category/catSelect";
	}

}
