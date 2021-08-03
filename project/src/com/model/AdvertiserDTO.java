package com.model;

public class AdvertiserDTO {
   
   
   private String adver_mbr;
   private String adver_pw;
   private String name;
   private String mail;
   private String phone;
   private int loginck;
   
   public AdvertiserDTO(String adver_mbr, String adver_pw, String name, String mail, String phone, int loginck) {

      this.adver_mbr = adver_mbr;
      this.adver_pw = adver_pw;
      this.name = name;
      this.mail = mail;
      this.phone = phone;
      this.loginck = loginck;
   }
   
   public AdvertiserDTO(){};
   
   //�α��� ������ -> loginck���� �޾ƿͼ� 0�Ǵ� 1�Ǵ� �� dao�� �� �Ѱܼ� �α���
   public AdvertiserDTO(String adver_mbr, String adver_pw) {
      this.adver_mbr = adver_mbr;
      this.adver_pw = adver_pw;
   }
   

   public String getAdver_mbr() {
      return adver_mbr;
   }

   public void setAdver_mbr(String adver_mbr) {
      this.adver_mbr = adver_mbr;
   }

   public String getAdver_pw() {
      return adver_pw;
   }

   public void setAdver_pw(String adver_pw) {
      this.adver_pw = adver_pw;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getMail() {
      return mail;
   }

   public void setMail(String mail) {
      this.mail = mail;
   }

   public String getPhone() {
      return phone;
   }

   public void setPhone(String phone) {
      this.phone = phone;
   }

   public int getLoginck() {
      return loginck;
   }

   public void setLoginck(int loginck) {
      this.loginck = loginck;
   }
   

}