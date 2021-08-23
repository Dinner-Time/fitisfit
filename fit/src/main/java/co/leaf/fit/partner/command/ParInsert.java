package co.leaf.fit.partner.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.leaf.fit.common.Command;
import co.leaf.fit.partner.service.PartnerMapper;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.PartnerVO;

public class ParInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			// 사진 업로드
			int sizeLimit = 15 * 1024 * 1024;
			String realPath = request.getSession().getServletContext().getRealPath("/") + "images/partner";

			File dir = new File(realPath);
			if (!dir.exists())
				dir.mkdirs();

			MultipartRequest multipartRequest = null;

			PartnerMapper dao = new PartnerService();
			PartnerVO vo = new PartnerVO();

			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String date = format.format(System.currentTimeMillis());

			multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8",
					new DefaultFileRenamePolicy());

			String filename = multipartRequest.getFilesystemName("parPhoto");

			vo.setParPhoto(filename);
			vo.setParEmail(multipartRequest.getParameter("parEmail"));
			vo.setParPassword(multipartRequest.getParameter("parPassword"));
			vo.setParName(multipartRequest.getParameter("parName"));
			vo.setParRegId(Integer.valueOf(multipartRequest.getParameter("parRegId")));
			vo.setParAddress(multipartRequest.getParameter("roadFullAddr"));
			vo.setParPhone(multipartRequest.getParameter("parPhone"));
			vo.setParIntro(multipartRequest.getParameter("parIntro"));
			vo.setParSubDate(Date.valueOf(date));
			dao.parInsert(vo);
			request.setAttribute("partnerSuccess", "success");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("partnerError", "error");
			return "main.do";
		}
		return "loginForm.do";
	}

}
