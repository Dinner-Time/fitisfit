package co.leaf.fit.program.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.timetable.service.TimetableService;
import co.leaf.fit.vo.ProgramVO;
import co.leaf.fit.vo.TimetableVO;

public class ProUpdatePhoto implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ProgramSerivce proDao = new ProgramSerivce();
		TimetableService timDao = new TimetableService();
		ProgramVO proVO = new ProgramVO();
		TimetableVO timVO = new TimetableVO();
		
		
		// 사진 업로드
		int sizeLimit = 15*1024*1024;
		String realPath = request.getSession().getServletContext().getRealPath("/") + "images/program";
		
		File dir = new File(realPath);
		if (!dir.exists()) dir.mkdirs();
		
		MultipartRequest multipartRequest = null;
		
		try {
			multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
			proVO.setProId(Integer.parseInt(multipartRequest.getParameter("proId")));
			timVO.setTimProId(Integer.parseInt(multipartRequest.getParameter("proId")));
		} catch (IOException e) {
			e.printStackTrace();
		}
		String filename = multipartRequest.getFilesystemName("proPhoto");
		proVO.setProPhoto(filename);
		int n = proDao.proUpdatePhoto(proVO);
		String page = "";
		
		if (n != 0) {
			page = "program/programDetail";
			proVO = new ProgramVO();
			timVO = new TimetableVO();
			proVO.setProId(Integer.parseInt(multipartRequest.getParameter("proId")));
			timVO.setTimProId(Integer.parseInt(multipartRequest.getParameter("proId")));
			request.setAttribute("detailList", proDao.proSelect(proVO));
			request.setAttribute("timetable", timDao.timSelect(timVO));
		}
		
		return page;
	}

}
