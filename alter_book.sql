/*Add column fk_publisher_id*/
ALTER TABLE book
ADD COLUMN fk_publisher_id integer;

/*Для столбца fk_publisher_id устанавливаем ограничения fk_book_publisher 
и ссылаемся на внешний ключ - таблицу publisher*/
ALTER TABLE book
ADD CONSTRAINT fk_book_publisher FOREIGN KEY (fk_publisher_id) REFERENCES publisher(publisher_id)