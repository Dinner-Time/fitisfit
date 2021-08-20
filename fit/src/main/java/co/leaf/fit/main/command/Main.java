package co.leaf.fit.main.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.category.service.CategoryMapper;
import co.leaf.fit.category.service.CategoryService;
import co.leaf.fit.common.Command;
import co.leaf.fit.region.service.RegionMapper;
import co.leaf.fit.region.service.RegionService;
import co.leaf.fit.vo.CategoryVO;
import co.leaf.fit.vo.RegionVO;

public class Main implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		CategoryMapper catDao = new CategoryService();
		RegionMapper regDao = new RegionService();
		
		request.setAttribute("catList", catDao.catSelectList());
		request.setAttribute("regList", regDao.regSelectList());
		
		return "home/main";
	}

}
