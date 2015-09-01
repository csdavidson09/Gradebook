CREATE OR REPLACE FUNCTION midterm(sid integer) RETURNS integer
AS
$$
	DECLARE result integer;
	BEGIN
		select midterm into result
		from midterm
		where st_id = sid;

		return result;
	END;
$$
LANGUAGE plpgsql

