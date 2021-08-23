package co.leaf.fit.instructor.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorMapper;
import co.leaf.fit.instructor.service.InstructorService;
import co.leaf.fit.vo.InstructorVO;

public class InsUpdatePhoto implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		InstructorMapper dao = new InstructorService();
		InstructorVO vo = new InstructorVO();
		
		
		// 사진 업로드
		int sizeLimit = 15 * 1024 * 1024;
		String realPath = request.getSession().getServletContext().getRealPath("/") + "images/instructor";
		File dir = new File(realPath);
		if (!dir.exists())
			dir.mkdirs();
		MultipartRequest multipartRequest = null;
		
		try {
			multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
			String filename = multipartRequest.getFilesystemName("insPhoto");
			vo.setInsId(Integer.valueOf(multipartRequest.getParameter("insId")));
			vo.setInsPhoto(filename);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int n = dao.insUpdatePhoto(vo);
		String page = "";
		
		if (n != 0) {
			vo = dao.insSelect(vo);
			request.setAttribute("ins", vo);
			page = "instructor/insSelect";
		}
		
		return page;
	}

}
