INSERT INTO dbo.FoundItems
(
    UserEmail,
    ItemName,
    Category,
    Description,
    LocationFound,
    DateFound,
    Contact
)
VALUES
(
    'test@gmail.com',
    'iPhone',
    'Electronics',
    'iPhone 18 cherry red',
    'PG Block 4th Floor',
    '2026-09-09',
    '8489224538'
);

SELECT * FROM dbo.FoundItems;