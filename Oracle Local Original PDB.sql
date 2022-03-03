desc dbms_service;

exec dbms_service.CREATE_SERVICE('pdb1','pdbprod1.us.oracle.com');
exec dbms_service.start_service('pdb1');
exec dbms_service.stop_service('pdb1');
exec dbms_service.delete_service('pdb1');

exec dbms_service.CREATE_SERVICE('test_service','network.test_service');
exec dbms_service.start_service('test_service');

create user thangna identified by abc123;
grant all PRIVILEGES to thangna;

--'ORCLPDB1.localdomain'
--'pdbprod1.us.oracle.com'

--1 db co the co nhieu service 

select * from global_name;
select value from v$parameter where name like '%service_name%';
select name from V$ACTIVE_SERVICES;
select * from V$SERVICES;
select utl_inaddr.get_host_name from dual;

select utl_inaddr.get_host_address('google.com') from dual;

select sys_context('USERENV','SERVER_HOST') from dual;

show con_name;

ALTER PLUGGABLE DATABASE ALL SAVE STATE;

show parameter service;

