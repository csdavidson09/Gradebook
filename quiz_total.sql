CREATE OR REPLACE FUNCTION quiz_total() RETURNS integer
AS
$$
	DECLARE result integer;
	BEGIN
		select sum(max) into result
		from work
		where type = 'q';

		return result;
	END;
$$
LANGUAGE plpgsql

