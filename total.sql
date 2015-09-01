CREATE OR REPLACE FUNCTION total(astype CHAR) RETURNS integer
AS
$$
	DECLARE total integer;
	BEGIN
		select sum(max) into total
		from work
		where type=astype;

		return total;
	END;
$$
LANGUAGE plpgsql

