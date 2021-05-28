 IF OBJECT_ID(N'Fantasy_Taverns.synthCreateTable',N'IF') IS NOT NULL
  DROP FUNCTION Fantasy_Taverns.synthCreateTable;
GO
CREATE FUNCTION Fantasy_Taverns.synthCreateTable(@TheTable TINYTEXT)
RETURNS TABLE
AS
RETURN(
  SELECT CONCAT('CREATE TABLE ',TABLE_NAME,'(') AS queryPiece
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_NAME = 'Taverns'
  UNION ALL
  SELECT CONCAT(
    cols.COLUMN_NAME,' ',cols.DATA_TYPE,
    CASE WHEN CHARACTER_MAXIMUM_LENGTH IS NOT NULL
    Then CONCAT(
      '(',CAST(CHARACTER_MAXIMUM_LENGTH as varchar(100)),')')
    Else ''
    END
    ,
    CASE WHEN rc.CONSTRAINT_NAME IS NOT NULL
    Then
      (CONCAT(' FOREIGN KEY REFERENCES ', constKeys.TABLE_NAME, '(', constKeys.COLUMN_NAME, ')'))
    Else ''
    END
    ,
    CASE WHEN rc.CONSTRAINT_NAME IS NULL AND kcu.COLUMN_NAME IS NOT NULL
    Then
      ' PRIMARY KEY'
    Else ''
    END
    , ','
  ) as queryPiece FROM
  information_schema.COLUMNS as cols
  LEFT JOIN
  information_schema.KEY_COLUMN_USAGE as kcu ON
    (kcu.TABLE_NAME = cols.TABLE_NAME and kcu.COLUMN_NAME=cols.COLUMN_NAME)
  LEFT JOIN
  information_schema.REFERENTIAL_CONSTRAINTS as rc ON
    (rc.CONSTRAINT_NAME=kcu.CONSTRAINT_NAME)
  LEFT JOIN
  (
    SELECT DISTINCT CONSTRAINT_NAME,TABLE_NAME,COLUMN_NAME
    FROM information_schema.KEY_COLUMN_USAGE
  ) as constKeys
  ON (constKeys.CONSTRAINT_NAME=rc.UNIQUE_CONSTRAINT_NAME)
  WHERE cols.TABLE_NAME = 'Taverns'
  UNION ALL
  SELECT ')';
);
