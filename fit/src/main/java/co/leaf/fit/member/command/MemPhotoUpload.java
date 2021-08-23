package co.leaf.fit.member.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

public class MemPhotoUpload implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		MemberMapper dao = new MemberService();
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("session");
		
		
		int sizeLimit = 15*1024*1024;
		String realPath = request.getSession().getServletContext().getRealPath("/") + "images/member";
		
		System.out.println(realPath);
		
		File dir = new File(realPath);
		if (!dir.exists()) dir.mkdirs();
		
		MultipartRequest multipartRequest = null;
		
		try {
			multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String filename = multipartRequest.getFilesystemName("memPhoto");
		
		vo.setMemPhoto(filename);
		dao.memUpdatePhoto(vo);
		
		request.setAttribute("member", vo);
		
		return "member/myPageMemInfo";
	}

}
