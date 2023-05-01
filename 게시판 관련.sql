select * FROM board_user
where uid = 'chhak0503' and pass = sha2('!q2w3e',256);

select a.*, b.nick from board_article as a
join board_user as b
on a.uid = b.uid
order  by no desc;

insert into board_article (title, content, uid, regip, rdate)
select title, content, uid, regip, rdate from board_article;