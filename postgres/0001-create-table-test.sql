create schema if not exists tests;

create table if not exists tests.sometable(
    Id int unique,
    LastCommit varchar(255) null,
    Modified timestamp not null
);
