/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source → Bronze)
===============================================================================
Purpose:
    This stored procedure loads raw data from external CSV files into 
    the 'bronze' schema. It ensures that the bronze layer always reflects 
    the latest ingested data from the source files.

Process Overview:
    - Truncates existing bronze tables to clear old data.
    - Uses the BULK INSERT command to load fresh data from CSV files 
      into the corresponding bronze tables.

Parameters:
    None.
    This stored procedure does not accept input parameters or return values.

Example Usage:
    EXEC bronze.load_bronze;
===============================================================================
*/


CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME
	
	DECLARE @start_time_bronze DATETIME, @end_time_bronze DATETIME
	SET @start_time_bronze = GETDATE()

	BEGIN TRY
		PRINT '========================='
		PRINT 'Loding Bronze Layer'
		PRINT '========================='


		PRINT '------------------------'
		PRINT 'Loding CRM Tabels'
		PRINT '------------------------'


		SET @start_time = GETDATE();
		PRINT '>> Truncating TABLE : bronze.crm_cust_info'
		TRUNCATE TABLE bronze.crm_cust_info

		PRINT '>>> Inserting DATA into : bronze.crm_cust_info'
		BULK INSERT bronze.crm_cust_info
		FROM 'C:\Users\User\Documents\datasets\source_crm\cust_info.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> LOAD Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'Seconds'
		PRINT '>>> ---------------------'

		SET @start_time = GETDATE();
		PRINT '>> Truncating TABLE : bronze.crm_prd_info'
		TRUNCATE TABLE bronze.crm_prd_info
		PRINT '>>> Inserting DATA into : bronze.crm_prd_info'
		BULK INSERT bronze.crm_prd_info
		FROM 'C:\Users\User\Documents\datasets\source_crm\prd_info.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> LOAD Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'Seconds'
		PRINT '>>> ---------------------'

		SET @start_time = GETDATE();
		PRINT '>> Truncating TABLE : bronze.crm_sales_details'
		TRUNCATE TABLE bronze.crm_sales_details
		PRINT '>>> Inserting DATA into : bronze.crm_sales_details'
		BULK INSERT bronze.crm_sales_details
		FROM 'C:\Users\User\Documents\datasets\source_crm\sales_details.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> LOAD Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'Seconds'
		PRINT '>>> ---------------------'


		PRINT '------------------------'
		PRINT 'Loding ERP Tabels'
		PRINT '------------------------'
		
		SET @start_time = GETDATE();
		PRINT '>> Truncating TABLE : bronze.erp_cust_az12'
		TRUNCATE TABLE bronze.erp_cust_az12
		PRINT '>>> Inserting DATA into : bronze.erp_cust_az12'
		BULK INSERT bronze.erp_cust_az12
		FROM 'C:\Users\User\Documents\datasets\source_erp\CUST_AZ12.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> LOAD Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'Seconds'
		PRINT '>>> ---------------------'

		SET @start_time = GETDATE();
		PRINT '>> Truncating TABLE : bronze.erp_loc_a101'
		TRUNCATE TABLE bronze.erp_loc_a101
		PRINT '>>> Inserting DATA into : bronze.erp_loc_a101'
		BULK INSERT bronze.erp_loc_a101
		FROM 'C:\Users\User\Documents\datasets\source_erp\LOC_A101.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> LOAD Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'Seconds'
		PRINT '>>> ---------------------'


		SET @start_time = GETDATE();
		PRINT '>> Truncating TABLE : bronze.erp_px_cat_g1v2'
		TRUNCATE TABLE bronze.erp_px_cat_g1v2
		PRINT '>>> Inserting DATA into : bronze.erp_px_cat_g1v2'
		BULK INSERT bronze.erp_px_cat_g1v2
		FROM 'C:\Users\User\Documents\datasets\source_erp\PX_CAT_G1V2.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> LOAD Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'Seconds'
		PRINT '>>> ---------------------'
	END TRY

	BEGIN CATCH
		PRINT '###########################'
		PRINT 'ERROR OCCURED DURING LOADING BRONZE_LAYER'
		PRINT 'ERROR MESSAGE' + ERROR_MESSAGE();
		PRINT 'ERROR MESSAGE' + CAST (ERROR_NUMBER() AS NVARCHAR)
		PRINT 'ERROR MESSAGE' + CAST (ERROR_STATE() AS NVARCHAR)
		PRINT '###########################'

	END CATCH
	SET @end_time_bronze = GETDATE()

	PRINT '>> LOAD Duration BRONZE LAYER: ' + CAST(DATEDIFF(second, @start_time_bronze, @end_time_bronze) AS NVARCHAR) + 'Seconds'
	PRINT '>>> ---------------------'
END
