package co.leaf.fit.program.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramMapper;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.vo.PartnerVO;
import co.leaf.fit.vo.ProgramVO;

public class ProgramAdd implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		PartnerVO parVO = (PartnerVO)session.getAttribute("session");
		ProgramMapper dao = new ProgramSerivce();
		ProgramVO vo = new ProgramVO();
		
		
		int sizeLimit = 15*1024*1024;
		String realPath = request.getSession().getServletContext().getRealPath("/") + "images/program";
		
		File dir = new File(realPath);
		if (!dir.exists()) dir.mkdirs();
		
		MultipartRequest multipartRequest = null;
		
		try {
			multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
			
			String filename = multipartRequest.getFilesystemName("proPhoto");
			vo.setProParId(parVO.getParId());
			vo.setProCatId(Integer.valueOf(multipartRequest.getParameter("proCatId")));
			vo.setProPhoto(filename);
			vo.setProDesc(multipartRequest.getParameter("proDesc"));
			vo.setProSince(Date.valueOf(multipartRequest.getParameter("proSince")));
			vo.setProPeriod(Integer.valueOf(multipartRequest.getParameter("proPeriod")));
			vo.setProPrice(Integer.valueOf(multipartRequest.getParameter("proPrice")));
			vo.setProSale2(Integer.valueOf(multipartRequest.getParameter("proSale2")));
			vo.setProSale3(Integer.valueOf(multipartRequest.getParameter("proSale3")));
			vo.setProMaxPeople(Integer.valueOf(multipartRequest.getParameter("proMaxPeople")));
			vo.setProInsId(Integer.valueOf(multipartRequest.getParameter("proInsId")));
			vo.setProName(multipartRequest.getParameter("proName"));
			dao.proInsertReq(vo);
			request.setAttribute("reqConfirm", "confirm");
		} catch (IOException e) {
			e.printStackTrace();
			return "main.do";
		}
		return "program/proParSimpleList";
	}

}
