CREATE PROCEDURE [dbo].[ManageCategory]
	@check nchar(1),
	@CatNo nvarchar(3),
	@CatName nvarchar(50)= null,
	@Description nvarchar(100) = null
AS
		if @check ='a' begin
	insert into Category
	values (@CatNo,@CatName ,@Description   )
	end
	if @check ='u' begin
	update Category set
	CatName= @CatName,
	Description = @Description
	where 
	CatNo =@CatNo
	end 

	if @check ='d' begin
	delete from Category
	where  CatNo =@CatNo
	end 
RETURN 0
