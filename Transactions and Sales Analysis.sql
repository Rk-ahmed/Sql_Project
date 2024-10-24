SELECT 
    *
FROM
    project1_df;
-- Write a query to retrieve all columns for customers who availed a discount.
SELECT 
    *
FROM
    project1_df
WHERE
    DiscountAvailed = 'yes';
-- Write a query to select the CustomerID and Transaction id of customers whose Net Amount is greater than 1000 INR.
SELECT 
    CustomerID, transactionid
FROM
    project1_df
WHERE
    NetAmount > 1000;
-- Write a query to find all transactions where the Purchase Date is in the year 2023 and Month 5.
SELECT 
    transactionid, PurchaseDate
FROM
    project1_df
WHERE
    YEAR(purchasedate) = 2023
        AND MONTH(PurchaseDate) = 05;
-- Write a query to retrieve all Product Category entries that include the word 'Clothing'.

SELECT 
    *
FROM
    project1_df
WHERE
    ProductCategory Like "%Clothing%";
-- Write a query to find all customers whose Age Group is either '18-25' or '26-35'.
SELECT 
    *
FROM
    project1_df
WHERE
    AgeGroup = '18-25' OR Agegroup = '26-35';
-- Write a query to count the number of transactions made by customers in the '25-45' age group 
SELECT 
    COUNT(*) as TransactionCount
FROM
    project1_df
WHERE
    AgeGroup = '25-45';
-- Write a query to count the number of transactions made by customers in the '60 and above' age group.
SELECT 
    COUNT(*) TRansactionid
FROM
    project1_df
WHERE
    Agegroup = '60 and above';
-- Write a query to find the distinct Product Category values in the dataset.
SELECT DISTINCT
    ProductCategory
FROM
    project1_df;
-- Write a query to list all transactions where the Gender is 'Male' and the Gross Amount is greater than 500 INR.
SELECT DISTINCT
    AgeGroup, Transactionid
FROM
    project1_df
WHERE
    Gender = 'Male' AND GrossAmount > 500;
-- Write a query to find all transactions and Location where the Location ends with the letter 'i'.
SELECT 
    transactionid, Location
FROM
    project1_df
WHERE
    location LIKE '%i';
-- Write a query to find the sum of the Discount Amount for all transactions where the Discount Availed is 'Yes'.
SELECT 
    SUM('DiscountAmount(INR)') AS TotalDiscountAmaount,
    Transactionid
FROM
    project1_df
WHERE
    DiscountAvailed = 'Yes'
GROUP BY Transactionid;
-- Write a query to retrieve the top 10 transactions ordered by the Gross Amount in ascending order.
SELECT 
    Transactionid
FROM
    project1_df
ORDER BY GrossAmount ASC
LIMIT 10;
-- Write a query to find all transactions where the Purchase Method is not 'Credit Card'.
SELECT 
    *
FROM
    project1_df
WHERE
    PurchaseMethod != 'Credit Card';
-- Write a query to retrieve the total Net Amount grouped by Product Category.
 SELECT 
    ROUND(SUM(NetAmount), 3) AS TotalNetAmount, ProductCategory
FROM
    project1_df
GROUP BY ProductCategory;
-- Write a query to find the maximum Gross Amount for transactions in the 'Electronics' product category.
SELECT 
    MAX(GrossAmount) AS MaximumGrossAmount
FROM
    project1_df
WHERE
    ProductCategory = 'Electronics';
/* Write a query to select the CustomerID, Gross Amount, and Discount Amount, with an alias for 
each column: CustID, GrossTotal, and DiscountTotal. */
SELECT 
    Customerid AS CustID,
    GrossAmount AS GrossTotal,
    'DiscountAmount(INR)' AS DiscountTotal
FROM
    project1_df;
/* Write a query to retrieve all columns where the Product Category is 'Groceries' and the Discount Amount is greater than 100 INR. */
SELECT 
    *
FROM
    project1_df
WHERE
    ProductCategory = 'Groceries'
        AND DiscountAmount(INR) > 100;
        
/*Write a query to count how many transactions were made in each Location.*/
SELECT 
    COUNT(*) transactionid, Location
FROM
    project1_df
GROUP BY location;
/*Write a query to find all customers whose Purchase Method is either 
'Credit Card' or 'Debit Card' and who are in the '18-25' age group.*/
SELECT 
    *
FROM
    project1_df
WHERE
    PurchaseMethod IN ('Credit Card' , 'Debit Card')
        AND AgeGroup = '18-25'
ORDER BY NetAmount ASC;

#Retrieve all Product Categories that start with the letter 'E' and contain more than 3 characters.
SELECT DISTINCT
    productCategory
FROM
    project1_df
WHERE
    ProductCategory LIKE '%E%'
        AND LENGTH(ProductCategory) > 3;