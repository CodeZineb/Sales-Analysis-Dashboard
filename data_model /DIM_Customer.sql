SELECT  
      c.customerKey AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.firstname AS [FirstName],
      --,[MiddleName]
      c.lastname AS [LastName],
      c.firstname +''+c.lastname AS [FullName],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      Case c.Gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' 
      END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      c.datefirstpurchase AS DateFirstPurchase,
      --,[CommuteDistance]
      g.city AS CustomerCity
  
FROM dbo.dimcustomer AS c
LEFT JOIN dbo.dimgeography AS g 
    ON g.GeographyKey = c.GeographyKey
ORDER BY c.CustomerKey ASC;
