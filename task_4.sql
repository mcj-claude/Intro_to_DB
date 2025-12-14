-- Print full description of books table from alx_book_store database
-- Database name will be passed as argument of mysql command

SELECT COLUMN_NAME, COLUMN_TYPE, DATA_TYPE, IS_NULLABLE, COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
AND TABLE_NAME = 'Books'
ORDER BY ORDINAL_POSITION;