SELECT *
FROM tbl_cstvsBoard;


      BEGIN
            FOR i IN 1..150 LOOP
                INSERT INTO tbl_cstVSBoard ( seq,  writer, pwd, email, title, tag,  content) 
                VALUES ( SEQ_TBLCSTVSBOARD.NEXTVAL, 'ȫ�浿' || MOD(i,10), '1234'
                , 'ȫ�浿' || MOD(i,10) || '@sist.co.kr', '����...'  || i, 0, '����...' || i );
            END LOOP;
            COMMIT;
         END;
         
       BEGIN
            UPDATE tbl_cstVSBoard
            SET writer = '���ؿ�'
            WHERE MOD(seq, 15) = 4;
            COMMIT;
         END;
         --
          BEGIN
             UPDATE tbl_cstVSBoard
             SET title = '�Խ��� ����'
             WHERE MOD(seq, 15) IN ( 3, 5, 8 );
             COMMIT;
          END;