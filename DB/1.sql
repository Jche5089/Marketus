DROP TABLE influencer_mbr;
DROP TABLE influencer_follower;
DROP TABLE influencer_like;
drop table advertiser_mbr;


DROP TABLE campaign CASCADE CONSTRAINTS;
DROP SEQUENCE campaign_SEQ;

DROP TABLE matching_camp CASCADE CONSTRAINTS;
DROP SEQUENCE matching_camp_SEQ;
DROP TABLE influencer_insta;
DROP TABLE influencer_report;




CREATE TABLE advertiser_mbr
(
    adver_mbr   VARCHAR(200)    NOT NULL, 
    adver_pw   VARCHAR(200)    NOT NULL, 
    name   VARCHAR(200)    NOT NULL, 
    mail   VARCHAR(200)   NOT NULL, 
    phone   VARCHAR(200)    NOT NULL, 
    login_ck   NUMBER              NOT NULL,  
    CONSTRAINT ADVERTISER_MBR_PK PRIMARY KEY (adver_mbr)
);





CREATE TABLE influencer_report
(
influ_id    VARCHAR(200)    NOT NULL, 
num_media    NUMBER   NOT NULL, 
num_follower    NUMBER   NOT NULL, 
num_following    NUMBER   NOT NULL, 
rank_percent         NUMBER 	NOT NULL,
influence_score    NUMBER   NOT NULL, 
real_follower    NUMBER   NOT NULL, 
fake_follower    NUMBER   NOT NULL, 
real_comment    NUMBER   NOT NULL, 
fake_comment    NUMBER   NOT NULL, 
category_dailylife    NUMBER   NOT NULL, 
category_beauty    NUMBER   NOT NULL, 
category_fashion    NUMBER   NOT NULL, 
category_food    NUMBER   NOT NULL, 
tot_like    NUMBER   NOT NULL, 
tot_comment    NUMBER   NOT NULL, 
assesment    NUMBER   NOT NULL, 
communication    NUMBER   NOT NULL, 
inquire    NUMBER   NOT NULL, 
comment_6    NUMBER   NOT NULL, 
comment_12    NUMBER   NOT NULL, 
comment_18    NUMBER   NOT NULL, 
comment_24    NUMBER   NOT NULL, 
comment_30    NUMBER   NOT NULL, 
dispos_mon    NUMBER   NOT NULL, 
dispos_tue    NUMBER   NOT NULL, 
dispos_wed    NUMBER   NOT NULL, 
dispos_thu    NUMBER   NOT NULL, 
dispos_fri    NUMBER   NOT NULL, 
dispos_sat    NUMBER   NOT NULL, 
dispos_sun    NUMBER   NOT NULL, 
dispos_first_time    NUMBER   NOT NULL, 
dispos_second_time    NUMBER   NOT NULL, 
dispos_third_time    NUMBER   NOT NULL, 
dispos_fourth_time    NUMBER   NOT NULL, 
dispos_fifth_time    NUMBER   NOT NULL, 
dispos_six_time   NUMBER   NOT NULL,
all_avg_like    NUMBER   NOT NULL, 
influ_inde_avg_like    NUMBER   NOT NULL, 
all_avg_like_comment    NUMBER   NOT NULL, 
influ_inde_avg_comment    NUMBER   NOT NULL, 
all_real_avg_comment    NUMBER   NOT NULL, 
influ_inde_real_avg_comment    NUMBER   NOT NULL, 
CONSTRAINT INFLUENCER_REPORT PRIMARY KEY (influ_id)
);





CREATE TABLE matching_camp
(
    campaign_index   NUMBER   NOT NULL, 
    campaign_Sid   NUMBER    NOT NULL, 
    campaign_title     VARCHAR(200)    NOT NULL, 
    influ_id   VARCHAR(200)   NOT NULL, 
   adver_mbr   VARCHAR(200)   NOT NULL, 
  match_ck   NUMBER       NOT NULL, 
  influ_affect   NUMBER       NOT NULL, 
  camp_ck   NUMBER       NOT NULL, 
    CONSTRAINT MATCHING_CAMP PRIMARY KEY (campaign_index)
);


Insert into matching_camp values(7,7,'sdf','www','zzz',2,100,0);
Insert into matching_camp values(8,8,'sdf','bbb','zzz',2,90,0);
Insert into matching_camp values(9,9,'sdf','ccc','zzz',2,20,0);
Insert into matching_camp values(10,10,'sdf','ddd','zzz',2,10,0);

Insert into matching_camp values(11,2,'sdf','eee','zzz',2,130,0);
Insert into matching_camp values(12,2,'sdf','fff','zzz',2,150,0);
Insert into matching_camp values(13,2,'sdf','ggg','zzz',2,110,0);
Insert into matching_camp values(14,4,'sdf','hhh','zzz',2,100,0);
Insert into matching_camp values(15,5,'sdf','iii','zzz',2,100,0);
Insert into matching_camp values(16,6,'sdf','jjj','zzz',2,100,0);

CREATE SEQUENCE matching_camp_SEQ
START WITH 1
INCREMENT BY 1;


CREATE TABLE influencer_mbr
(
    influ_id      VARCHAR(200)    NOT NULL, 
    pw            VARCHAR(200)    NOT NULL, 
    name          VARCHAR(200)    NOT NULL, 
    age           NUMBER          NOT NULL, 
    sex           VARCHAR(200)    NOT NULL, 
    insta_add     VARCHAR(200)    NOT NULL, 
   point         NUMBER          NOT NULL, 
    phone         VARCHAR(200)   NOT NULL, 
    targetAge         NUMBER    NOT NULL, 
    targetGender        VARCHAR(200)          NOT NULL, 
    influ_category 	VARCHAR(200)          NOT NULL, 
    login_ck 	NUMBER    NOT NULL, 
   influence_score     NUMBER    NOT NULL,
   paidMember 	 NUMBER    NOT NULL,
    CONSTRAINT INFLUENCER_MBR_PK PRIMARY KEY (influ_id)
);




CREATE TABLE influencer_follower
(
    influencer_ID    VARCHAR(200)    NOT NULL, 
    real_comment     NUMBER          NOT NULL, 
    fake_comment     NUMBER          NOT NULL, 
    real_like        NUMBER          NOT NULL, 
    fake_like        NUMBER          NOT NULL, 
    tot_like         NUMBER          NOT NULL, 
    tot_comment      NUMBER          NOT NULL, 
    category         VARCHAR(200)    NOT NULL, 
    assesment        NUMBER          NOT NULL, 
    communication    NUMBER          NOT NULL, 
    inquire          NUMBER          NOT NULL, 
    CONSTRAINT  INFLUENCER_FOLLOWER_PK PRIMARY KEY (influencer_ID)
);





CREATE TABLE influencer_like
(
    influencer_id    VARCHAR(200)    NOT NULL, 
    comment_6        NUMBER          NOT NULL, 
    comment_12       NUMBER          NOT NULL, 
    comment_18       NUMBER          NOT NULL, 
    comment_24       NUMBER          NOT NULL, 
    comment_30       NUMBER          NOT NULL, 
    like_6           NUMBER          NOT NULL, 
    like_12          NUMBER          NOT NULL, 
    like_18          NUMBER          NOT NULL, 
    like_24          NUMBER          NOT NULL, 
    like_30          NUMBER          NOT NULL, 
    CONSTRAINT  INFLUENCER_LIKE_PK PRIMARY KEY (influencer_id)
);

CREATE TABLE campaign
(
	campaign_Sid 	NUMBER          NOT NULL, 
	adver_mbr          VARCHAR(200)   NOT NULL, 
	ad_section          VARCHAR(200)   NOT NULL, 
	ad_estimate 	NUMBER          NOT NULL, 
	rq_follower 	NUMBER          NOT NULL, 
	rq_age 	NUMBER          NOT NULL, 
	rq_gender          VARCHAR(200)   NOT NULL, 
	category          VARCHAR(200)   NOT NULL, 
	campaign_title          VARCHAR(200)   NOT NULL, 
	campaign_sub          VARCHAR(200)   NOT NULL, 
	rcrtmNmbr 	NUMBER          NOT NULL, 
	application_num	 NUMBER          NOT NULL, 
	campaign_start          VARCHAR(200)   NOT NULL, 
	campaign_end          VARCHAR(200)  NOT NULL,  
	campaign_status 	NUMBER      NOT NULL,  
    CONSTRAINT CAMPAIGN_PK PRIMARY KEY (campaign_Sid)
);



CREATE SEQUENCE campaign_SEQ
START WITH 1
INCREMENT BY 1;




CREATE TABLE influencer_insta
(
    influ_id         VARCHAR(200)          NOT NULL, 
   num_media         NUMBER    NOT NULL, 
   num_follower           NUMBER    NOT NULL, 
    num_following           NUMBER          NOT NULL, 
    biography            VARCHAR(200)    NOT NULL, 
    real_follower              NUMBER       NOT NULL, 
    fake_follower       NUMBER        NOT NULL, 
   influ_affect         NUMBER        NOT NULL, 
    CONSTRAINT INFLUENCER_INSTA_PK PRIMARY KEY (influ_id)
);

