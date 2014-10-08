1. create database

   create database <schema_name>;

2. create user and grant privileges

   grant all on <schema_name>.* to <username>@'%' identified by '<password>' with grant option;
