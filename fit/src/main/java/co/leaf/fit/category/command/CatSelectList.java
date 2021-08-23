package co.leaf.fit.category.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.category.service.CategoryService;
import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.region.service.RegionService;
import co.leaf.fit.vo.CategoryVO;
import co.leaf.fit.vo.ProgramVO;

public class CatSelectList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int catId = Integer.parseInt(request.getParameter("catId"));
		
		CategoryService catDao = new CategoryService();
		RegionService regDao = new RegionService();
		ProgramSerivce proDao = new ProgramSerivce();
		
		CategoryVO catVO = new CategoryVO();
		ProgramVO proVO = new ProgramVO();

		proVO.setProCatId(catId);
		catVO.setCatId(catId);
		
		request.setAttribute("regList", regDao.regSelectList());
		request.setAttribute("proList", proDao.proCatSimpleList(proVO));
		request.setAttribute("category", catDao.catSelect(catVO));
		
		return "category/catSelectList";
	}

}
