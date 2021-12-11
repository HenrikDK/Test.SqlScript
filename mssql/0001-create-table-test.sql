
if not exists (select name from sys.schemas where name = 'Tests')
    exec('create schema Tests');

if object_id('Tests.SomeTable', 'U') is null
begin
    create table Tests.SomeTable
    (
        Id int unique,
        LastCommit varchar(255) null,
        Modified datetime not null
    );
end
