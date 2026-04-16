Select 
 cst_id,
 cst_key,
 TRIM(cst_firstname) as cst_firstname, 
 TRIM(cst_lastname) as cst_lastname, 
 cst_create_date, 
 CASE WHEN UPPER(TRIM(cst_material_status)) = 'S' THEN 'Single'
	WHEN UPPER(TRIM(cst_material_status)) = 'M' THEN 'Married'
	END cst_material_status,
 CASE WHEN UPPER(TRIM(cst_gndr)) = 'F' THEN 'Female'
	WHEN UPPER(TRIM(cst_gndr)) = 'M' THEN 'Male'
	END cst_gndr
from
(
Select *,
ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_date DESC) as flag_number
from bronze.crm_cust_info
)t WHERE flag_number = 1
