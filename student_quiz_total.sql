CREATE OR REPLACE FUNCTION quiz_total(sid integer) RETURNS integer
AS
$$
	DECLARE result integer;
	BEGIN
		select quiz_total into result
		from quiz_total
		where st_id = sid;

		return result;
	END;
$$
LANGUAGE plpgsql

