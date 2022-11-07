CREATE TABLE  MUSER
(
     USER_ID     VARCHAR2(20)  PRIMARY KEY
   , USER_PW     VARCHAR2(20)  NOT NULL
   , USER_NAME   VARCHAR2(60)  NOT NULL
   , user_cate   VARCHAR2(200)
)

CREATE TABLE  UNIVERSITY
(
     UNIV_IDX      NUMBER(5)  PRIMARY KEY
   , UNIV_NAME     VARCHAR2(20)  NOT NULL
)

CREATE TABLE  BOARD
(
      board_idx     NUMBER(5)  PRIMARY KEY
    , USER_ID
    , CONSTRAINT BOARD_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES MUSER (USER_ID)
    , univ_idx
    , CONSTRAINT BOARD_univ_idx_FK FOREIGN KEY(univ_idx) REFERENCES university (univ_idx)
    , menu_idx      NUMBER(5)  NOT NULL
    , board_title   VARCHAR2(300)  NOT NULL 
    , board_REGDATE DATE              DEFAULT  SYSDATE
    , READCOUNT     NUMBER( 6, 0 )    DEFAULT  0
    
    , BNUM          NUMBER( 5, 0 )    DEFAULT  0
    , LVL           NUMBER( 5, 0 )    DEFAULT  0
    , STEP          NUMBER( 5, 0 )    DEFAULT  0
    , NREF          NUMBER( 5, 0 )    DEFAULT  0
)

CREATE TABLE  BVIEW
(
      board_idx     NUMBER(5),
      bview_cont    VARCHAR2(4000)
)

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
    , univ_idx
    , CONSTRAINT MOIM_univ_idx_fk FOREIGN KEY(univ_idx) REFERENCES UNIVERSITY (univ_idx)
    , moim_cate    NUMBER(5)
    , USER_ID
    , CONSTRAINT MOIM_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES MUSER (USER_ID)
    , moim_intro VARCHAR2(4000)
)

CREATE TABLE MOIMUSER
(
      moim_idx
    , CONSTRAINT MOIMUSER_moim_idx_FK FOREIGN KEY(moim_idx) REFERENCES MOIM (moim_idx)
    , USER_ID
    , CONSTRAINT MOIMUSER_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES MUSER (USER_ID)
)

ALTER TABLE BVIEW
ADD CONSTRAINT BVIEW_board_idx_fk FOREIGN KEY(board_idx) REFERENCES BOARD (board_idx)
