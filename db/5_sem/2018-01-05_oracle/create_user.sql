create user ordbms identified by ordbms
default tablespace users
temporary tablespace temp;

grant UNLIMITED tablespace to ordbms;

create role ordbmsrole;

grant connect, resource, create session, dba TO ordbmsrole;

grant ordbmsrole to ordbms;