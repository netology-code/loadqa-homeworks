-- Скрипт установки Процедура v1
-- удалить процедуру если уже была создана
drop procedure if exists dorepeat_v1; 
-- создать процедуру
CREATE PROCEDURE dorepeat_v1(p1 INT)
BEGIN
  SET @x = 0;
  SET @post_id = (SELECT id from wp_posts order by id desc limit 1);
  REPEAT SET @x = @x + 1; 
  INSERT INTO wp_comments (comment_post_ID,comment_author,comment_author_email,comment_author_url,comment_author_IP,comment_date,comment_date_gmt,comment_content,comment_karma,comment_approved,comment_agent,comment_type,comment_parent,user_id) VALUES
	 (@post_id,'qauser','qauser@netology.ru','http://localhost:8080','172.21.0.1','2021-11-30 23:20:26','2021-11-30 20:20:26',concat(@x,'comment'),0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36 OPR/65.0.3467.78','comment',0,1);
 UNTIL @x > p1 END REPEAT;
END;


-- Скрипт установки Процедура v2
-- удалить процедуру если уже была создана
drop procedure if exists dorepeat_v2; 
-- создать процедуру
CREATE PROCEDURE dorepeat_v2(p1 INT, p2 TEXT)
BEGIN
  SET @x = 0;
  SET @post_id = (SELECT comment_post_ID from wp_comments group by comment_content having count(comment_content) >= 3 limit 1 );
  REPEAT SET @x = @x + 1; 
  INSERT INTO wp_comments (comment_post_ID,comment_author,comment_author_email,comment_author_url,comment_author_IP,comment_date,comment_date_gmt,comment_content,comment_karma,comment_approved,comment_agent,comment_type,comment_parent,user_id) VALUES
	 (@post_id,'qauser','qauser@netology.ru','http://localhost:8080','172.21.0.1','2021-11-30 23:20:26','2021-11-30 20:20:26',concat(@x,p2),0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36 OPR/65.0.3467.78','comment',0,1);
 UNTIL @x > p1 END REPEAT;
END;