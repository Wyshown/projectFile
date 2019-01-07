ALTER TABLE S_RECRUIT 
ADD COLUMN RECRUIT_POSITION_CODE VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' COMMENT '招聘职位编码（店铺常量表）' NOT NULL DEFAULT 'DRIVER_POSITION' AFTER RECRUIT_TYPE ,
ADD COLUMN POSITION_NAME VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_bin' COMMENT '招聘职位名称' NOT NULL DEFAULT '机手' AFTER RECRUIT_POSITION_CODE ,
ADD COLUMN RECRUIT_NUMBER int(5)  COMMENT '招聘人数' NOT NULL DEFAULT 1 AFTER POSITION_NAME ;