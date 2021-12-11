truncate table Tests.SomeTable;
insert into Tests.Sometable(id, lastcommit, modified)
values (1, '12345', current_timestamp),
       (2, '32413', current_timestamp);
