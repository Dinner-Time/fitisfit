package co.leaf.fit.instructor.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorService;
import co.leaf.fit.vo.InstructorVO;
import co.leaf.fit.vo.PartnerVO;

public class InsInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		InstructorService dao = new InstructorService();
		InstructorVO insVO = new InstructorVO();
		PartnerVO parVO = (PartnerVO) session.getAttribute("session");

		// 사진 업로드
		int sizeLimit = 15 * 1024 * 1024;
		String realPath = request.getSession().getServletContext().getRealPath("/") + "images/instructor";
		File dir = new File(realPath);
		if (!dir.exists())
			dir.mkdirs();
		MultipartRequest multipartRequest = null;

		try {
			multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8",
					new DefaultFileRenamePolicy());

			String filename = multipartRequest.getFilesystemName("insPhoto");

			insVO.setInsPhoto(filename);
			insVO.setInsName(multipartRequest.getParameter("insName"));
			insVO.setInsPhone(multipartRequest.getParameter("insPhone"));
			insVO.setInsGender(multipartRequest.getParameter("insGender"));
			insVO.setInsInsta(multipartRequest.getParameter("insInsta"));
			insVO.setInsKakao(multipartRequest.getParameter("insKakao"));
			insVO.setInsHistory(multipartRequest.getParameter("insHistory"));
			insVO.setInsParId(parVO.getParId());

		} catch (IOException e) {
			e.printStackTrace();
		}

		int n = dao.insInsert(insVO);
		String page = "";

		if (n != 0) {
			page = "insSelectList.do";
		}
		return page;
	}

}
