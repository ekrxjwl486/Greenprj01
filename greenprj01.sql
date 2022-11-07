CREATE TABLE  MUSER
(
     USER_ID     VARCHAR2(20)  PRIMARY KEY
   , USER_PW     VARCHAR2(20)  NOT NULL
   , USER_NAME   VARCHAR2(60)  NOT NULL
   , USER_INDATE     DATE          DEFAULT SYSDATE
   , region_idx      NUMBER(5)
   , category_idx      NUMBER(5)
)

CREATE TABLE  REGION
(
     region_idx      NUMBER(5)  PRIMARY KEY
   , region_name     VARCHAR2(20)  NOT NULL
)

CREATE TABLE  MCATEGORY
(
     category_idx      NUMBER(5)  PRIMARY KEY
   , category_name     VARCHAR2(20)  NOT NULL
)

CREATE TABLE  MUSERCAT
(
     category_idx,
     CONSTRAINT MUSERCAT_category_idx FOREIGN KEY(category_idx) REFERENCES MCATEGORY (category_idx),
     USER_ID     VARCHAR2(20)
)

ALTER TABLE MUSERCAT
ADD CONSTRAINT MUSERCAT_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUSER (USER_ID)


ALTER TABLE MUSER
ADD CONSTRAINT MUSER_region_idx FOREIGN KEY(region_idx) REFERENCES REGION (region_idx)


ALTER TABLE MUSER
ADD CONSTRAINT MUSER_category_idx FOREIGN KEY(category_idx) REFERENCES MCATEGORY (category_idx)

COMMIT

CREATE TABLE  BOARD
(
      board_idx     NUMBER(5)  PRIMARY KEY
    , USER_ID       VARCHAR2(20) 
    , board_title   VARCHAR2(300)  NOT NULL
    , board_WRITER  VARCHAR2(50) 
    , board_REGDATE DATE              DEFAULT  SYSDATE
    , READCOUNT     NUMBER( 6, 0 )    DEFAULT  0
    
    , BNUM          NUMBER( 5, 0 )    DEFAULT  0
    , LVL           NUMBER( 5, 0 )    DEFAULT  0
    , STEP          NUMBER( 5, 0 )    DEFAULT  0
    , NREF          NUMBER( 5, 0 )    DEFAULT  0
)

ALTER TABLE BOARD
ADD CONSTRAINT BOARD_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUSER (USER_ID)

CREATE TABLE  BVIEW
(
      board_idx     NUMBER(5),
      bview_cont    VARCHAR2(4000)
)

ALTER TABLE BVIEW
ADD CONSTRAINT BVIEW_board_idx FOREIGN KEY(board_idx) REFERENCES BOARD (board_idx)

CREATE   TABLE    FILES
(
    FILE_NUM     NUMBER(6, 0)  NOT NULL   -- 파일번호
   , board_idx   NUMBER(5, 0)  NOT NULL   -- 게시글 번호
   , FILENAME    VARCHAR2(300) NOT NULL   -- 파일명
   , FILEEXT     VARCHAR2(100) NOT NULL   -- 파일확장자
   , SFILENAME   VARCHAR2(300) NOT NULL   -- 저장된 실제 파일명
   
   , CONSTRAINT  FILES_PK     PRIMARY KEY  -- 기본키(복합키) 
     (
          FILE_NUM,
          board_idx
     ) 
   , CONSTRAINT  FK_BOARD_FILES_board_idx 
     FOREIGN KEY (board_idx)
     REFERENCES  BOARD(board_idx)
      ON  DELETE CASCADE
)

CREATE TABLE  MOIM
(
      moim_idx     NUMBER(5)  PRIMARY KEY
    , moim_name    VARCHAR2(100) NOT NULL
    , region_idx
    , CONSTRAINT MOIM_region_idx FOREIGN KEY(region_idx) REFERENCES REGION (region_idx)
    , category_idx 
    , CONSTRAINT MOIM_category_idx FOREIGN KEY(category_idx) REFERENCES MCATEGORY (category_idx)
    , USER_ID
    , CONSTRAINT MOIM_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUSER (USER_ID)
    , moim_limit NUMBER(5) NOT NULL
    , moim_intro VARCHAR2(4000)
)

CREATE TABLE MOIMUSER
(
      moim_idx
    , CONSTRAINT MOIMUSER_moim_idx FOREIGN KEY(moim_idx) REFERENCES MOIM (moim_idx)
    , USER_ID
    , CONSTRAINT MOIMUSER_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUSER (USER_ID)
)

INSERT INTO  MUSER ( USER_ID, USER_PW, USER_NAME )
 VALUES ( 'ekrxjwl486', '1234', '김현태' );
 
INSERT INTO REGION(REGION_idx, REGION_name)
 VALUES ( 1, '서울' );
INSERT INTO MCATEGORY(category_idx, category_name)
 VALUES ( 1, '운동/스포츠' );
commit;