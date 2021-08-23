package co.leaf.fit.partner.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerMapper;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.PartnerVO;

public class ParUpdatePhoto implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		PartnerMapper dao = new PartnerService();
		PartnerVO vo = (PartnerVO)session.getAttribute("session");
		
		int sizeLimit = 15*1024*1024;
		String realPath = request.getSession().getServletContext().getRealPath("/") + "images/partner";
		
		File dir = new File(realPath);
		if (!dir.exists()) dir.mkdirs();
		
		MultipartRequest multipartRequest = null;
		
		try {
			multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
			String filename = multipartRequest.getFilesystemName("parPhoto");
			vo.setParPhoto(filename);
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int n = dao.parUpdatePhoto(vo);
		String page = "";
		
		if (n != 0) {
			vo = dao.parSelect(vo);
			request.setAttribute("partner", vo);
			page = "partner/partnerSelect";
		}
		
		return page;
	}

}
