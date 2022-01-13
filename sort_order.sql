FUNCTION "CONVERT_TO_SORT_ORDER" ( IN_STRING VARCHAR(100) ) 
    RETURNS OUT_STRING VARCHAR(100)
    LANGUAGE SQLSCRIPT
    SQL SECURITY INVOKER 
    DETERMINISTIC AS
BEGIN

/* This function converts a position_number into a sort_order. e.g.
5.2.10 -> 005.02.10
Input: String with dots ('.')
Output: String with dots ('.'), but with leading zeroes
*/
declare first_level varchar(100);
declare next_levels varchar(100);
declare tmp varchar(100);
declare akt_lev varchar(100);

first_level = lpad(substr_before(:IN_STRING, '.'), 3, '0') ;
IN_STRING = substr_after(:IN_STRING, '.');
tmp = '';

while ( length(:IN_STRING) > 0 )
DO
    akt_lev = lpad(substr_before(:IN_STRING, '.'), 2, '0');
    IN_STRING = substr_after(:IN_STRING, '.');
    
    tmp = :tmp || '.' || :akt_lev; 
END WHILE;

OUT_STRING = :first_level || :tmp || '.' ;
END;
