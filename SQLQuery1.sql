select Count(*) as row_2009_10 from dbo.[Year 2009-2010];
select Count(*) as row_2010_11 from dbo.[Year 2010-2011];
select * from dbo.[Year 2009-2010];

-- Combine both years and convert data types safely

select
	Invoice, StockCode, Description, Quantity,

	COALESCE(
		TRY_CONVERT(datetime2, InvoiceDate, 120),
		TRY_CONVERT(datetime2, InvoiceDate, 105)
	) AS InvoiceDate,

	TRY_CONVERT(decimal(10,2), Price) AS Price,
	Customer_ID, Country, '2009-2010' AS SourceSheet
INTO dbo.RetailCombined
from dbo.[Year 2009-2010]

UNION ALL

SELECT
	Invoice, StockCode, Description, Quantity,
	COALESCE(
		try_convert(datetime2,Invoicedate,120),
		try_convert(datetime2,Invoicedate,105)
	) AS Invoicedate,
	TRY_Convert(decimal(10,2), Price) AS Price,
	Customer_id,Country, '2010-2011' AS SourceSheet
From dbo.[Year 2010-2011];

--CONFIRM THE CONVERSION WORKED CLEANLY
select count(*) as total_rows from dbo.RetailCombined;
select Count(*) as failed_dates from dbo.RetailCombined where invoiceDate is null;
select Count(*) as failed_price from dbo.RetailCombined where price is null;

--CHECK 1 - MISSING CUSTOMER_ID 
Select count(*) AS missing_customer_id 
from dbo.RetailCombined where Customer_ID is null;

--CHECK 2 - NEGATIVE OR ZERO QUANTITY
Select count(*) AS Negative_Qty
from dbo.RetailCombined where Quantity <= 0;

--CHECK 3 - MISSING DESCRIPTION
Select count(*) As missing_description 
from dbo.RetailCombined where Description is null;

--CHECK 4 - EXACT DUPLICATE ROWS
Select Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_id, Country,
		count(*) AS ExactDupecount
from dbo.RetailCombined
group by Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_id, Country
having count(*) > 1;

-- REMOVE DUPLICATE AND PRODUCE THE FINALE CLEANED TABLE 

With Deduped as (
	select *, 
		row_number() over (
			partition by Invoice, StockCode, Description, Quantity, InvoiceDate, price, Customer_id, Country
			order by (select null)
		) as Rownum
	from dbo.RetailCombined
)
Select Invoice, StockCode, Description, Quantity, InvoiceDate, price, Customer_id, Country, SourceSheet
into dbo.RetailCleaned
from Deduped
where Rownum = 1;

-- CHECK TOTAL COUNT AND TABLE ALSO
select * from dbo.RetailCleaned;
select count(*) as total_rows from RetailCleaned;
