CREATE OR REPLACE FUNCTION percent(st_id integer) RETURNS integer
AS
$$
	BEGIN
	return round((asm_total(st_id)*1.0/total('a')*35
			+ quiz_total(st_id)*1.0/total('q')*15
			+ midterm(st_id)*1.0/total('t')*20)
			/70 * 100);
	END;
$$
LANGUAGE plpgsql

