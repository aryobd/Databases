select a.*
from tm_person a

select a.*
from tm_person_email a

select a.*
from tm_person_email_m a

DBCC CHECKIDENT('tm_person', RESEED, 16) --> 16 = NEXT NEW ROW WILL USE THIS ID = 16

DBCC CHECKIDENT('tm_person_email', RESEED, 14) --> 14 = existing current row id in table
DBCC CHECKIDENT('tm_person_email_m', RESEED, 14) --> 14 = existing current row id in table

SET IDENTITY_INSERT tm_person ON
SET IDENTITY_INSERT tm_person OFF

SET IDENTITY_INSERT tm_person_email ON
SET IDENTITY_INSERT tm_person_email OFF

select IDENT_CURRENT('tm_person')

insert into tm_person (full_name, title_front, title_behind, birth_date, gender, tr_blood_type_id, tr_religion_id, person_desc)
values ('Adwita Nayaprana', null, null, null, 1, null, null, null)

1001
1002
1003
1004
1005

10001
10002
10003
10004
10005