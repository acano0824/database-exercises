use codeup_test_db;

SELECT name FROM albums where name = 'Pink Floyd';

SELECT release_date FROM albums where name = 'Sgt. Pepper\'s Lonely Hearts Club';

SELECT genre FROM albums where name = 'Nevermind';

SELECT * FROM albums where release_date between '1990' and '2000';

SELECT * FROM albums where sales < '20000000';

SELECT * FROM albums where genre like '%rock%';