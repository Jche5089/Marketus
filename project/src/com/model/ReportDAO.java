package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReportDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	ReportDTO dto = null;
	ArrayList<MemberDTO> list = null;// db�� �ִ� ��� ȸ���� ������ ��� ���� arraylist�� �ʿ���

	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void close() {

		try {
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	
	
	
	
	
	public ReportDTO repoPage(String mem_id) {
		conn();
		System.out.println("����Ȯ��" + mem_id);
		
		try {
			System.out.println("����Ȯ��2");
			String sql = "select * from influencer_report where influ_id = ?"; 
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mem_id);
			rs = psmt.executeQuery();
		
			
			if(rs.next()) {
				
				String influ_id = rs.getString(1);
				int num_media = rs.getInt(2);
				int num_follower = rs.getInt(3);
				int num_following = rs.getInt(4);
				int rank_percent = rs.getInt(5);
				int influence_score = rs.getInt(6);
				int real_follower = rs.getInt(7);
				int fake_follower = rs.getInt(8);
				int real_comment = rs.getInt(9);
				int fake_comment = rs.getInt(10);
				int category_dailylife = rs.getInt(11);
				int category_beauty = rs.getInt(12);
				int category_fashion = rs.getInt(13);
				int category_food = rs.getInt(14);
				int tot_like = rs.getInt(15);
				int tot_comment = rs.getInt(16);
				int assesment = rs.getInt(17);
				int communication = rs.getInt(18);
				int inquire = rs.getInt(19);
				int comment_6 = rs.getInt(20);
				int comment_12 = rs.getInt(21);
				int comment_18 = rs.getInt(22);
				int comment_24 = rs.getInt(23);
				int comment_30 = rs.getInt(24);
				int dispos_mon = rs.getInt(25);
				int dispos_tue = rs.getInt(26);
				int dispos_wed = rs.getInt(27);
				int dispos_thu = rs.getInt(28);
				int dispos_fri = rs.getInt(29);
				int dispos_sat = rs.getInt(30);
				int dispos_sun = rs.getInt(31);
				int dispos_first_time = rs.getInt(32);
				int dispos_second_time = rs.getInt(33);
				int dispos_third_time = rs.getInt(34);
				int dispos_fourth_time = rs.getInt(35);
				int dispos_fifth_time = rs.getInt(36);
				int dispos_six_time = rs.getInt(37);;
				int all_avg_like = rs.getInt(38);
				int influ_inde_avg_like = rs.getInt(39);
				int all_avg_like_comment = rs.getInt(40);
				int influ_inde_avg_comment = rs.getInt(41);
				int all_real_avg_comment = rs.getInt(42);
				int influ_inde_real_avg_comment = rs.getInt(43);
				
				/* ��ȯ�ؾ� �ϴ� ������ �������̱� ������ ĸ��ȭ�� ��-- ���߿� �� ���� ������ �켱 �Ѱ��ֱ��..,, */
				dto = new ReportDTO( influ_id,  num_media,  num_follower,  num_following,  rank_percent,influence_score,
						 real_follower,  fake_follower,  real_comment,  fake_comment,  category_dailylife,
						 category_beauty,  category_fashion,  category_food,  tot_like,  tot_comment,  assesment,
						 communication,  inquire,  comment_6,  comment_12,  comment_18,  comment_24,
						 comment_30,  dispos_mon,
						 dispos_tue,  dispos_wed,  dispos_thu,  dispos_fri,  dispos_sat,  dispos_sun,
						 dispos_first_time,  dispos_second_time,  dispos_third_time,  dispos_fourth_time,
						 dispos_fifth_time,  dispos_six_time, all_avg_like,  influ_inde_avg_like,  all_avg_like_comment,
						 influ_inde_avg_comment,  all_real_avg_comment,  influ_inde_real_avg_comment);
				
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		System.out.println("�� Ȯ�� : " + dto.getAll_avg_like());
		return dto;

	}
	
	
	
	
	

}
