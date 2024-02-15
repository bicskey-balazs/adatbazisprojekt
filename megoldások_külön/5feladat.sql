ALTER TABLE pizzak MODIFY ar varchar(100);
UPDATE pizzak
SET ar = CONCAT(ar, ' Ft');
SELECT * FROM pizzak;
