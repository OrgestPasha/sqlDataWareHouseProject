CREATE TABLE bronze.crm_cust_info (
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_material_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
);

CREATE TABLE bronze.crm_prd_info (
    
    prd_id INT, 
    prd_key NVARCHAR(50) ,
    prd_nm NVARCHAR(100) ,
    prd_cost DECIMAL(10,2) ,
    prd_line CHAR(2) ,
    prd_start_dt DATE ,
    prd_end_dt DATE ,
);

CREATE TABLE bronze.crm_sales_details(
    sls_ord_num   VARCHAR(20)   NOT NULL,
    sls_prd_key   VARCHAR(50)   NOT NULL,
    sls_cust_id   INT           NOT NULL,
    sls_order_dt  VARCHAR(50)   NOT NULL,
    sls_ship_dt   DATE          NOT NULL,
    sls_due_dt    DATE          NOT NULL,
    sls_sales     DECIMAL(12,2) NOT NULL,
    sls_quantity  INT           NOT NULL,
    sls_price     DECIMAL(12,2) NOT NULL,
    
);

CREATE TABLE bronze.erp_cust(
CID VARCHAR(50),
BDATE DATE,
GEN VARCHAR(10)
);
CID,CNTRY
AW-00011000,Australia

CREATE TABLE bronze.erp_LOC_A101 (
  CID VARCHAR(50),
  CNTRY VARCHAR(50)
)

CREATE TABLE bronze.erp_PX_CAT_G1V2(
  ID VARCHAR(10),
  CAT VARCHAR(50),
  SUBCAT VARCHAR(50),
  MAINTENANCE VARCHAR(50) 
);
