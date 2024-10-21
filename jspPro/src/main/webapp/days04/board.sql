SELECT *
FROM tbl_cstvsBoard;


      BEGIN
            FOR i IN 1..150 LOOP
                INSERT INTO tbl_cstVSBoard ( seq,  writer, pwd, email, title, tag,  content) 
                VALUES ( SEQ_TBLCSTVSBOARD.NEXTVAL, '홍길동' || MOD(i,10), '1234'
                , '홍길동' || MOD(i,10) || '@sist.co.kr', '더미...'  || i, 0, '더미...' || i );
            END LOOP;
            COMMIT;
         END;
         
       BEGIN
            UPDATE tbl_cstVSBoard
            SET writer = '박준용'
            WHERE MOD(seq, 15) = 4;
            COMMIT;
         END;
         --
          BEGIN
             UPDATE tbl_cstVSBoard
             SET title = '게시판 구현'
             WHERE MOD(seq, 15) IN ( 3, 5, 8 );
             COMMIT;
          END;