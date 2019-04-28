-- Removes all characters that are not defined in this function 
-- and replaces them with spaces (' ').

DROP FUNCTION udf_alpha;
CREATE FUNCTION udf_alpha ( iv_string NVARCHAR(1000) )
RETURNS rv_string NVARCHAR(1000)
AS BEGIN

    DECLARE lv_string NVARCHAR(1000);
    DECLARE lv_counter INT = 1;
    DECLARE lv_char NVARCHAR(1);
    DECLARE lv_length_string INT;

    lv_length_string :=  LENGTH(iv_string);
    
    lv_string := iv_string;
    rv_string := '';

    WHILE lv_counter <= lv_length_string DO
        lv_char := SUBSTRING(lv_string,lv_counter,1);
        IF 
        lv_char = UPPER('a')
        OR lv_char = UPPER('b')
        OR lv_char = UPPER('c')
        OR lv_char = UPPER('d')
        OR lv_char = UPPER('e')
        OR lv_char = UPPER('f')
        OR lv_char = UPPER('g')
        OR lv_char = UPPER('h')
        OR lv_char = UPPER('i')
        OR lv_char = UPPER('j')
        OR lv_char = UPPER('l')
        OR lv_char = UPPER('m')
        OR lv_char = UPPER('n')
        OR lv_char = UPPER('o')
        OR lv_char = UPPER('p')
        OR lv_char = UPPER('q')
        OR lv_char = UPPER('r')
        OR lv_char = UPPER('s')
        OR lv_char = UPPER('t')
        OR lv_char = UPPER('u')
        OR lv_char = UPPER('v')
        OR lv_char = UPPER('w')
        OR lv_char = UPPER('x')
        OR lv_char = UPPER('y')
        OR lv_char = UPPER('z')
        OR lv_char = 'a'
        OR lv_char = 'b'
        OR lv_char = 'c'
        OR lv_char = 'd'
        OR lv_char = 'e'
        OR lv_char = 'f'
        OR lv_char = 'g'
        OR lv_char = 'h'
        OR lv_char = 'i'
        OR lv_char = 'j'
        OR lv_char = 'l'
        OR lv_char = 'm'
        OR lv_char = 'n'
        OR lv_char = 'o'
        OR lv_char = 'p'
        OR lv_char = 'q'
        OR lv_char = 'r'
        OR lv_char = 's'
        OR lv_char = 't'
        OR lv_char = 'u'
        OR lv_char = 'v'
        OR lv_char = 'v'
        OR lv_char = 'w'
        OR lv_char = 'x'
        OR lv_char = 'y'
        OR lv_char = 'z'
        OR lv_char = '0'
        OR lv_char = '1'
        OR lv_char = '1'
        OR lv_char = '2'
        OR lv_char = '2'
        OR lv_char = '3'
        OR lv_char = '4'
        OR lv_char = '5'
        OR lv_char = '6'
        OR lv_char = '7'
        OR lv_char = '8'
        OR lv_char = '9'
        THEN
            lv_char = lv_char;
        ELSE
            lv_char = ' ';
        END IF;
        rv_string := CONCAT(rv_string, lv_char);
    lv_counter := lv_counter + 1;
END WHILE;

END;

