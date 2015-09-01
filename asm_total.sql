CREATE OR REPLACE FUNCTION asm_total() RETURNS integer
AS
$$
	DECLARE result integer;
	BEGIN
		select sum(max) into result
		from work
		where type = 'a';

		return result;
	END;
$$
LANGUAGE plpgsql

