package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CampaginDAO;
import com.model.CampaginDTO;
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.ReportDAO;
import com.model.ReportDTO;

@WebServlet("/ReportService")
public class ReportService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");
		System.out.println("SUCCESS ReportService :");

		HttpSession session = request.getSession(); // ���� ��������
		
//		MemberDTO info = null;
//		String inf_id =  request.getParameter("inf_name");
//		
//		if(inf_id == null) {
//			inf_id = "aa";
//		}
//		
//		if( inf_id.equals("heeruring")) {
//			inf_id = request.getParameter("inf_name");
//		}else {
//			info = (MemberDTO) session.getAttribute("info"); // ȸ�� ���� ��������
//			inf_id = info.getInflu_id();
//		}
//		
		 
		MemberDTO info = null;
		String inf_id =  request.getParameter("inf_name");
		
	//	if(inf_id == null) {
	//		inf_id = "aa";
	//	}
		
		if( inf_id != null) {
			inf_id = request.getParameter("inf_name");
		}else {
			info = (MemberDTO) session.getAttribute("info"); // ȸ�� ���� ��������
			inf_id = info.getInflu_id();
		}
		
		
		
		
		// �α��� ���� ������ ������ �α��� �������� �̵�
//		if (info == null) {
//			out.println(
//					"<script>alert('�α��� ����'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp'; </script>");
//			out.flush();
//		} else {
		MemberDAO mdao = new MemberDAO();
		MemberDTO list = new MemberDTO();
		
		
		list = mdao.myPage(inf_id);// info.getMem_id()
			ReportDAO rdao = new ReportDAO();
			// System.out.println("ReportService������ : " + info.getInflu_id());
			ReportDTO rdto = rdao.repoPage(inf_id);// info.getMem_id()

			if (rdto != null) {
				System.out.println("SUCCESS ReportService :" + rdto.getAssesment());

				session.setAttribute("report", rdto); 
				session.setAttribute("influMypage", list);
				response.sendRedirect("./klorofil-free-dashboard-template-v2.0/loading.jsp");

			} else {
				System.out.println("���۽���!");
			}
	//	}

	}

}
