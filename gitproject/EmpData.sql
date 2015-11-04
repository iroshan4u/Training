--What is a Store procedure?

--Set of sql statements(procedural logics) that can reuse again and again
--Advantage- centralize data access to single place 
--some RDBMS not work with store procedure

--How to create a Store Procedure with SQL?

Use Employee; --database name(Employee)
Go
create procedure  EmpData --Store Procedure Name(EmpData)
   @lastName nvarchar(100),-- @variableName1( @lastName) and data type, size
   @firstName nvarchar(100) -- @variableName2( @firstName) and data type, size
as

   select firstName, lastName --statment for what you want
   from Employee
   where firstName=@firstName and lastName= @lastName
Go

--How to execute a Store Procedure with parameter pass?

Execute EmpData 'bandara', 'Iroshan' --pass two parametes(bandara-@lastName, Iroshan-@firstName) 