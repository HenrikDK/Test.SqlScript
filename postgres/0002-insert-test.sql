truncate tests.sometable;
insert into tests.sometable(id, lastcommit, modified)
values (1, '12345', current_timestamp),
       (2, '32413', current_timestamp);
