create schema if not exists Tests;

create table if not exists Tests.SomeTable(
    Id int unique,
    LastCommit varchar(255) null,
    Modified timestamp not null
);
