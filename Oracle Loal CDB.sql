-- create new pdb
create pluggable database BOOKSTORE
admin user linhpn IDENTIFIED by abc123
file_name_convert = ('/u02/app/oracle/oradata/ORCL/pdbseed','custompdb/oradata/bookstore');

alter pluggable database BOOKSTORE open read write;

DROP PLUGGABLE DATABASE BOOKSTORE
  INCLUDING DATAFILES;
--create pluggable database orclpdb2 from orclpdb1 
--storage unlimited tempfile reuse 
--file_name_convert=('ORCLPDB1', 'ORCLPDB2');

show PDBS;

select * from v$pdbs;

alter system set service_names = 'ORCLCDB.localdomain, network.test_service' scope =both;

show parameter service
