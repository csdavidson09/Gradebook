CREATE OR REPLACE FUNCTION asm_total(sid integer) RETURNS integer
AS
$$
	DECLARE result integer;
	BEGIN
		select asm_total into result
		from asm_total
		where st_id = sid;

		return result;
	END;
$$
LANGUAGE plpgsql

