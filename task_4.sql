-- Print full description of books table from alx_book_store database
-- Database name will be passed as argument of mysql command

SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE, COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
AND TABLE_NAME = 'books'
ORDER BY ORDINAL_POSITION;