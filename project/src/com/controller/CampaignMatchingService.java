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

@WebServlet("/CampaignMatchingService")
public class CampaignMatchingService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");

		System.out.println("CampaignMatchingService������");
		HttpSession session = request.getSession(); // ���� ��������

		String name = request.getParameter("ck"); // inf / adver
		System.out.println("value������ : " + name);

		MemberDAO mdao = new MemberDAO();

		if (name.equals("adver")) {
			String camnum = request.getParameter("camnum");
			String[] array = camnum.split(",");
			System.out.println("=====================================" + array[0]); // ķ���� ������ �ѹ�
			System.out.println("=====================================" + array[1]); // ķ���� ���� 0������ 1�����Ϸ� 2����

			int camnum2 = Integer.parseInt(array[0]);
			int camStatus = Integer.parseInt(array[1]);
			System.out.println("������-ķ���� ��Ī ���� ���� ����");
			System.out.println("Integer.parseInt(camnum)) :" + camnum2);

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			CampaginDAO camDao = new CampaginDAO();
			CampaginDTO camDto = new CampaginDTO();

			matList = matDao.MachingInfluencer(camnum2);// ķ���� ���̵� �� �ӽ÷� ��2 �־���

			System.out.println("matList :" + matList.size());
			camDto = camDao.campaignSelect(camnum2); // �ش� ķ���� ������ ��������
			System.out.println("camDTO : " + camDto.getCampaign_Sid());
			// matList ��Ī���� :0 -> ��Ī �� ��û�� ���÷�� && �ش� ķ���� id,

			int camp_ck = 0;
			for (int i = 0; i < matList.size(); i++) {
				if (matList.get(i).getCamp_ck() == 0) {
					camp_ck = 0;
					break;
				} else {
					camp_ck = 1;
				}
			}

			System.out.println("ķ���� ��Ī ���� : match_ck" + camp_ck);

			MatchingDAO matDao2 = new MatchingDAO();

			ArrayList<MatchingDTO> matList2 = new ArrayList<MatchingDTO>();
			matList2 = matDao2.MachingInfluencerSuccess(camnum2);

			if (camStatus == 0) {
				System.out.println("������������ Ȯ�� ");
				session.setAttribute("camDto", camDto);
				session.setAttribute("check", "adver");
				session.setAttribute("applyAllInfluencer", matList);
				response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_adver.jsp");
			} else {
				System.out.println("else������������ Ȯ�� ");
				session.setAttribute("camDto", camDto);
				session.setAttribute("check", "adver");
				session.setAttribute("camp_ck", String.valueOf(camp_ck));
				session.setAttribute("applyAllInfluencer", matList);
				session.setAttribute("MachingInfluencerSuccess", matList2);
				response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_adver.jsp");
			}

		} else if (name.equals("inf")) {
			MemberDTO info_login = (MemberDTO) session.getAttribute("info_login"); // ������ ķ���� ��������

			CampaginDTO camp_info = (CampaginDTO) session.getAttribute("camp_Info"); // ������ ķ���� ��������
			System.out.println("��Ī ���� : info_login = " + camp_info.getAd_estimate());

			System.out.println("ķ���� ��Ī ���� ���� ����");

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			System.out.println("11111111111" + info_login);
			System.out.println("11111111111" + camp_info);
			int cnt = matDao.applyCamp(camp_info, info_login);

			if (cnt > 0) {
				System.out.println("ķ���� ��û ����!");
			} else {
				System.out.println("ķ���� ��û ����!");
			}

			// ��û�Ϸ� ����
			response.sendRedirect("bino-free-html5-landing-page-template/influencer_main.jsp");
		}
	}
}
