-- password admin
update auth.users set password = '$2a$11$1.ogQ1aZLO0kM7kJNTxBrOoEaBdf0xbBxHgLLCnMaWXCnVoN4PpJC' where user_id = 'admin';
-- password user1234
update auth.users set password = '$2a$11$5pyrGgpbDb0hQ7TTzGWCd.A64bnTSVDbVsQl6/TNrNsOqJxMMw8uK' where user_id = 'user';