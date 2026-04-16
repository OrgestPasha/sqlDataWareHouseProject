-- Expect Empty 
Select 
cst_id,
COUNT(*)
from silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id is NULL


-- Expect Empty 
Select cst_firstname 
from silver.crm_cust_info
where cst_firstname != TRIM(cst_firstname)

-- Expect Empty 
Select cst_lastname 
from silver.crm_cust_info
where cst_lastname != TRIM(cst_lastname)

-- Expect Male, Female, NULL 
Select DISTINCT cst_gndr
from silver.crm_cust_info

-- Expect Married, Single, NULL
Select DISTINCT cst_material_status
from silver.crm_cust_info
