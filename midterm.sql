CREATE OR REPLACE FUNCTION midterm() RETURNS integer
AS
$$
	DECLARE result integer;
	BEGIN
		select sum(max) into result
		from work
		where type = 't' and
num = 1;

		return result;
	END;
$$
LANGUAGE plpgsql

