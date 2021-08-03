package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.AdvertiserDAO;
import com.model.AdvertiserDTO;
import com.model.CampaginDAO;
import com.model.CampaginDTO;
import com.model.MatchingDAO;
import com.model.MatchingDTO;
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.ReportDAO;
import com.model.ReportDTO;

@WebServlet("/InfluencerMypage")
public class InfluencerMypage extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");
		System.out.println("------���������� ���� Ȯ��-------");

		String name = request.getParameter("name");

		System.out.println(name);

		if (name.equals("adver")) {
			System.out.println("������ �������̷� �̵�");

			HttpSession session = request.getSession(); // ���� ��������
			session.removeAttribute("matchingadv12345");
			
			
			
			AdvertiserDTO info = (AdvertiserDTO) session.getAttribute("info"); // ȸ�� ���� ��������
			System.out.println("������ ���� ����"+info);

			AdvertiserDAO mdao = new AdvertiserDAO();
			AdvertiserDTO list = new AdvertiserDTO();
			CampaginDAO cdao = new CampaginDAO();
			CampaginDTO cdto = new CampaginDTO();

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			ArrayList<CampaginDTO> arrList = new ArrayList<CampaginDTO>();

			// �α��� ���� ������ ������ �α��� �������� �̵�
			if (info == null) {
				out.println(
						"<script>alert('Try To Login!'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp?value=adver'; </script>");
				out.flush();
			} else {

				list = mdao.myPage(info.getAdver_mbr());// info.getMem_id()
				matList = matDao.MatchingAllSelect_ad(info.getAdver_mbr());
				arrList = cdao.campaign_adver_Select(info.getAdver_mbr());
				
				if (list != null) {
					session.setAttribute("adverMypage", list);
					session.setAttribute("adverMypageMatching", matList);
					session.setAttribute("adverCampaignSelect", arrList);
					response.sendRedirect("./klorofil-free-dashboard-template-v2.0/mypage_ad.jsp");

				} else {
					System.out.println("���۽���!");
				}

			}

		} else if (name.equals("inf")) {
			System.out.println("���÷�� ������������ �̵�");

			HttpSession session = request.getSession(); // ���� ��������

			MemberDTO info = (MemberDTO) session.getAttribute("info"); // ȸ�� ���� ��������

			MemberDAO mdao = new MemberDAO();
			MemberDTO list = new MemberDTO();

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();

			System.out.println("Ȯ�� : " + list.getInflu_category());

			// �α��� ���� ������ ������ �α��� �������� �̵�
			if (info == null) {
				out.println(
						"<script>alert('Try To Login!'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp?value=inf'; </script>");
				out.flush();
			} else {

				ReportDAO rdao = new ReportDAO();
				System.out.println("ReportService������ : " + info.getInflu_id());
				ReportDTO rdto = rdao.repoPage(info.getInflu_id());// info.getMem_id()

				System.out.println("rdto : " + rdto.getAssesment());
				list = mdao.myPage(info.getInflu_id());// info.getMem_id()
				matList = matDao.MatchingAllSelect(info.getInflu_id());

				if (list != null) {
					session.setAttribute("report", rdto);
					session.setAttribute("influMypage", list);
					session.setAttribute("influMypageMatching", matList);
					response.sendRedirect("./klorofil-free-dashboard-template-v2.0/mypage.jsp");
				} else {
					System.out.println("���۽���!");
				}

			}

		}

	}

}
