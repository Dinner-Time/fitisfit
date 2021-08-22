package co.leaf.fit.region.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.category.service.CategoryService;
import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.region.service.RegionService;
import co.leaf.fit.vo.ProgramVO;
import co.leaf.fit.vo.RegionVO;

public class RegSelectList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int regId = Integer.parseInt(request.getParameter("regId"));
		
		CategoryService catDao = new CategoryService();
		RegionService regDao = new RegionService();
		ProgramSerivce proDao = new ProgramSerivce();
		
		RegionVO regVO = new RegionVO();
		ProgramVO proVO = new ProgramVO();
		
		regVO.setRegId(regId);
		proVO.setParRegId(regId);
		
		request.setAttribute("catList", catDao.catSelectList());
		request.setAttribute("proList", proDao.proRegSimpleList(proVO));
		request.setAttribute("regName", regDao.regSelect(regVO).getRegName());
		
		return "region/regSelectList";
	}

}
