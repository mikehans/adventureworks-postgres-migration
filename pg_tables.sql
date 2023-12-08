-- ------------ Write DROP-FOREIGN-KEY-CONSTRAINT-stage scripts -----------

ALTER TABLE m_adventureworks_saleslt.customeraddress DROP CONSTRAINT fk_customeraddress_address_addressid_2099048;

ALTER TABLE m_adventureworks_saleslt.customeraddress DROP CONSTRAINT fk_customeraddress_customer_customerid_18099105;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT fk_product_productcategory_productcategoryid_34099162;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT fk_product_productmodel_productmodelid_50099219;

ALTER TABLE m_adventureworks_saleslt.productcategory DROP CONSTRAINT fk_productcategory_productcategory_parentproductcategoryid_productcategoryid_66099276;

ALTER TABLE m_adventureworks_saleslt.productmodelproductdescription DROP CONSTRAINT fk_productmodelproductdescription_productdescription_productdescriptionid_82099333;

ALTER TABLE m_adventureworks_saleslt.productmodelproductdescription DROP CONSTRAINT fk_productmodelproductdescription_productmodel_productmodelid_98099390;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail DROP CONSTRAINT fk_salesorderdetail_product_productid_114099447;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail DROP CONSTRAINT fk_salesorderdetail_salesorderheader_salesorderid_130099504;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT fk_salesorderheader_address_billto_addressid_146099561;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT fk_salesorderheader_address_shipto_addressid_162099618;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT fk_salesorderheader_customer_customerid_178099675;

-- ------------ Write DROP-CONSTRAINT-stage scripts -----------

ALTER TABLE m_adventureworks_saleslt.address DROP CONSTRAINT ak_address_rowguid_1397580017;

ALTER TABLE m_adventureworks_saleslt.address DROP CONSTRAINT pk_address_addressid_1285579618;

ALTER TABLE m_adventureworks_saleslt.customer DROP CONSTRAINT ak_customer_rowguid_1413580074;

ALTER TABLE m_adventureworks_saleslt.customer DROP CONSTRAINT pk_customer_customerid_965578478;

ALTER TABLE m_adventureworks_saleslt.customeraddress DROP CONSTRAINT ak_customeraddress_rowguid_1429580131;

ALTER TABLE m_adventureworks_saleslt.customeraddress DROP CONSTRAINT pk_customeraddress_customerid_addressid_1317579732;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT ak_product_name_1445580188;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT ak_product_productnumber_1461580245;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT ak_product_rowguid_1477580302;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT ck_product_listprice_194099732;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT ck_product_sellenddate_210099789;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT ck_product_standardcost_226099846;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT ck_product_weight_242099903;

ALTER TABLE m_adventureworks_saleslt.product DROP CONSTRAINT pk_product_productid_1093578934;

ALTER TABLE m_adventureworks_saleslt.productcategory DROP CONSTRAINT ak_productcategory_name_1493580359;

ALTER TABLE m_adventureworks_saleslt.productcategory DROP CONSTRAINT ak_productcategory_rowguid_1509580416;

ALTER TABLE m_adventureworks_saleslt.productcategory DROP CONSTRAINT pk_productcategory_productcategoryid_1173579219;

ALTER TABLE m_adventureworks_saleslt.productdescription DROP CONSTRAINT ak_productdescription_rowguid_1525580473;

ALTER TABLE m_adventureworks_saleslt.productdescription DROP CONSTRAINT pk_productdescription_productdescriptionid_1061578820;

ALTER TABLE m_adventureworks_saleslt.productmodel DROP CONSTRAINT ak_productmodel_name_1541580530;

ALTER TABLE m_adventureworks_saleslt.productmodel DROP CONSTRAINT ak_productmodel_rowguid_1557580587;

ALTER TABLE m_adventureworks_saleslt.productmodel DROP CONSTRAINT pk_productmodel_productmodelid_1013578649;

ALTER TABLE m_adventureworks_saleslt.productmodelproductdescription DROP CONSTRAINT ak_productmodelproductdescription_rowguid_1573580644;

ALTER TABLE m_adventureworks_saleslt.productmodelproductdescription DROP CONSTRAINT pk_productmodelproductdescription_productmodelid_productdescriptionid_culture_1125579048;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail DROP CONSTRAINT ak_salesorderdetail_rowguid_1589580701;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail DROP CONSTRAINT ck_salesorderdetail_orderqty_258099960;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail DROP CONSTRAINT ck_salesorderdetail_unitprice_274100017;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail DROP CONSTRAINT ck_salesorderdetail_unitpricediscount_290100074;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail DROP CONSTRAINT pk_salesorderdetail_salesorderid_salesorderdetailid_1349579846;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT ak_salesorderheader_rowguid_1605580758;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT ak_salesorderheader_salesordernumber_1621580815;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT ck_salesorderheader_duedate_306100131;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT ck_salesorderheader_freight_322100188;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT ck_salesorderheader_shipdate_338100245;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT ck_salesorderheader_status_354100302;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT ck_salesorderheader_subtotal_370100359;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT ck_salesorderheader_taxamt_386100416;

ALTER TABLE m_adventureworks_saleslt.salesorderheader DROP CONSTRAINT pk_salesorderheader_salesorderid_1381579960;

-- ------------ Write DROP-INDEX-stage scripts -----------

DROP INDEX IF EXISTS m_adventureworks_saleslt.ix_address_ix_address_addressline1_addressline2_city_stateprovince_postalcode_countryregion;

DROP INDEX IF EXISTS m_adventureworks_saleslt.ix_address_ix_address_stateprovince;

DROP INDEX IF EXISTS m_adventureworks_saleslt.ix_customer_ix_customer_emailaddress;

DROP INDEX IF EXISTS m_adventureworks_saleslt.ix_salesorderdetail_ix_salesorderdetail_productid;

DROP INDEX IF EXISTS m_adventureworks_saleslt.ix_salesorderheader_ix_salesorderheader_customerid;

-- ------------ Write DROP-TABLE-stage scripts -----------

DROP TABLE IF EXISTS m_adventureworks_saleslt.address;

DROP TABLE IF EXISTS m_adventureworks_saleslt.customer;

DROP TABLE IF EXISTS m_adventureworks_saleslt.customeraddress;

DROP TABLE IF EXISTS m_adventureworks_saleslt.product;

DROP TABLE IF EXISTS m_adventureworks_saleslt.productcategory;

DROP TABLE IF EXISTS m_adventureworks_saleslt.productdescription;

DROP TABLE IF EXISTS m_adventureworks_saleslt.productmodel;

DROP TABLE IF EXISTS m_adventureworks_saleslt.productmodelproductdescription;

DROP TABLE IF EXISTS m_adventureworks_saleslt.salesorderdetail;

DROP TABLE IF EXISTS m_adventureworks_saleslt.salesorderheader;

-- ------------ Write CREATE-DATABASE-stage scripts -----------

CREATE SCHEMA IF NOT EXISTS m_adventureworks_saleslt;

-- ------------ Write CREATE-SEQUENCE-stage scripts -----------

CREATE SEQUENCE IF NOT EXISTS m_adventureworks_saleslt.salesordernumber AS bigint
INCREMENT BY 1
START WITH 1
MAXVALUE 2147483647
MINVALUE -2147483648
NO CYCLE;

-- ------------ Write CREATE-TABLE-stage scripts -----------

CREATE TABLE m_adventureworks_saleslt.address(
    addressid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    addressline1 VARCHAR(60) NOT NULL,
    addressline2 VARCHAR(60),
    city VARCHAR(30) NOT NULL,
    stateprovince m_adventureworks_dbo.name NOT NULL,
    countryregion m_adventureworks_dbo.name NOT NULL,
    postalcode VARCHAR(15) NOT NULL,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.customer(
    customerid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    namestyle m_adventureworks_dbo.namestyle NOT NULL DEFAULT (0),
    title VARCHAR(8),
    firstname m_adventureworks_dbo.name NOT NULL,
    middlename m_adventureworks_dbo.name,
    lastname m_adventureworks_dbo.name NOT NULL,
    suffix VARCHAR(10),
    companyname VARCHAR(128),
    salesperson VARCHAR(256),
    emailaddress VARCHAR(50),
    phone m_adventureworks_dbo.phone,
    passwordhash VARCHAR(128) NOT NULL,
    passwordsalt VARCHAR(10) NOT NULL,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.customeraddress(
    customerid INTEGER NOT NULL,
    addressid INTEGER NOT NULL,
    addresstype m_adventureworks_dbo.name NOT NULL,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.product(
    productid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    name m_adventureworks_dbo.name NOT NULL,
    productnumber VARCHAR(25) NOT NULL,
    color VARCHAR(15),
    standardcost NUMERIC(19,4) NOT NULL,
    listprice NUMERIC(19,4) NOT NULL,
    size VARCHAR(5),
    weight NUMERIC(8,2),
    productcategoryid INTEGER,
    productmodelid INTEGER,
    sellstartdate TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    sellenddate TIMESTAMP WITHOUT TIME ZONE,
    discontinueddate TIMESTAMP WITHOUT TIME ZONE,
    thumbnailphoto BYTEA,
    thumbnailphotofilename VARCHAR(50),
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.productcategory(
    productcategoryid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    parentproductcategoryid INTEGER,
    name m_adventureworks_dbo.name NOT NULL,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.productdescription(
    productdescriptionid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    description VARCHAR(400) NOT NULL,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.productmodel(
    productmodelid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    name m_adventureworks_dbo.name NOT NULL,
    catalogdescription XML,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.productmodelproductdescription(
    productmodelid INTEGER NOT NULL,
    productdescriptionid INTEGER NOT NULL,
    culture CHAR(6) NOT NULL,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.salesorderdetail(
    salesorderid INTEGER NOT NULL,
    salesorderdetailid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    orderqty SMALLINT NOT NULL,
    productid INTEGER NOT NULL,
    unitprice NUMERIC(19,4) NOT NULL,
    unitpricediscount NUMERIC(19,4) NOT NULL DEFAULT (0.0),
    linetotal NUMERIC(38,6) NOT NULL GENERATED ALWAYS AS (COALESCE(unitprice * (1.0 - unitpricediscount) * orderqty, 0.0)) STORED,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE m_adventureworks_saleslt.salesorderheader(
    salesorderid INTEGER NOT NULL DEFAULT nextval('m_adventureworks_saleslt.salesordernumber'),
    revisionnumber SMALLINT NOT NULL DEFAULT (0),
    orderdate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp(),
    duedate TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    shipdate TIMESTAMP WITHOUT TIME ZONE,
    status SMALLINT NOT NULL DEFAULT (1),
    onlineorderflag m_adventureworks_dbo.flag NOT NULL DEFAULT (1),
    salesordernumber VARCHAR(25) NOT NULL,
    purchaseordernumber m_adventureworks_dbo.ordernumber,
    accountnumber m_adventureworks_dbo.accountnumber,
    customerid INTEGER NOT NULL,
    shiptoaddressid INTEGER,
    billtoaddressid INTEGER,
    shipmethod VARCHAR(50) NOT NULL,
    creditcardapprovalcode VARCHAR(15),
    subtotal NUMERIC(19,4) NOT NULL DEFAULT (0.00),
    taxamt NUMERIC(19,4) NOT NULL DEFAULT (0.00),
    freight NUMERIC(19,4) NOT NULL DEFAULT (0.00),
    totaldue NUMERIC(19,4) NOT NULL GENERATED ALWAYS AS (COALESCE((subtotal + taxamt) + freight, 0)) STORED,
    comment TEXT,
    rowguid UUID NOT NULL DEFAULT aws_sqlserver_ext.newid(),
    modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT clock_timestamp()
)
        WITH (
        OIDS=FALSE
        );

-- ------------ Write CREATE-INDEX-stage scripts -----------

CREATE INDEX ix_address_ix_address_addressline1_addressline2_city_stateprovince_postalcode_countryregion
ON m_adventureworks_saleslt.address
USING BTREE (addressline1 ASC, addressline2 ASC, city ASC, stateprovince ASC, postalcode ASC, countryregion ASC);

CREATE INDEX ix_address_ix_address_stateprovince
ON m_adventureworks_saleslt.address
USING BTREE (stateprovince ASC);

CREATE INDEX ix_customer_ix_customer_emailaddress
ON m_adventureworks_saleslt.customer
USING BTREE (emailaddress ASC);

CREATE INDEX ix_salesorderdetail_ix_salesorderdetail_productid
ON m_adventureworks_saleslt.salesorderdetail
USING BTREE (productid ASC);

CREATE INDEX ix_salesorderheader_ix_salesorderheader_customerid
ON m_adventureworks_saleslt.salesorderheader
USING BTREE (customerid ASC);

-- ------------ Write CREATE-CONSTRAINT-stage scripts -----------

ALTER TABLE m_adventureworks_saleslt.address
ADD CONSTRAINT ak_address_rowguid_1397580017 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.address
ADD CONSTRAINT pk_address_addressid_1285579618 PRIMARY KEY (addressid);

ALTER TABLE m_adventureworks_saleslt.customer
ADD CONSTRAINT ak_customer_rowguid_1413580074 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.customer
ADD CONSTRAINT pk_customer_customerid_965578478 PRIMARY KEY (customerid);

ALTER TABLE m_adventureworks_saleslt.customeraddress
ADD CONSTRAINT ak_customeraddress_rowguid_1429580131 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.customeraddress
ADD CONSTRAINT pk_customeraddress_customerid_addressid_1317579732 PRIMARY KEY (customerid, addressid);

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT ak_product_name_1445580188 UNIQUE (name);

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT ak_product_productnumber_1461580245 UNIQUE (productnumber);

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT ak_product_rowguid_1477580302 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT ck_product_listprice_194099732 CHECK (
(listprice >= (0.00)));

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT ck_product_sellenddate_210099789 CHECK (
(sellenddate >= sellstartdate OR sellenddate IS NULL));

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT ck_product_standardcost_226099846 CHECK (
(standardcost >= (0.00)));

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT ck_product_weight_242099903 CHECK (
(weight > (0.00)));

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT pk_product_productid_1093578934 PRIMARY KEY (productid);

ALTER TABLE m_adventureworks_saleslt.productcategory
ADD CONSTRAINT ak_productcategory_name_1493580359 UNIQUE (name);

ALTER TABLE m_adventureworks_saleslt.productcategory
ADD CONSTRAINT ak_productcategory_rowguid_1509580416 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.productcategory
ADD CONSTRAINT pk_productcategory_productcategoryid_1173579219 PRIMARY KEY (productcategoryid);

ALTER TABLE m_adventureworks_saleslt.productdescription
ADD CONSTRAINT ak_productdescription_rowguid_1525580473 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.productdescription
ADD CONSTRAINT pk_productdescription_productdescriptionid_1061578820 PRIMARY KEY (productdescriptionid);

ALTER TABLE m_adventureworks_saleslt.productmodel
ADD CONSTRAINT ak_productmodel_name_1541580530 UNIQUE (name);

ALTER TABLE m_adventureworks_saleslt.productmodel
ADD CONSTRAINT ak_productmodel_rowguid_1557580587 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.productmodel
ADD CONSTRAINT pk_productmodel_productmodelid_1013578649 PRIMARY KEY (productmodelid);

ALTER TABLE m_adventureworks_saleslt.productmodelproductdescription
ADD CONSTRAINT ak_productmodelproductdescription_rowguid_1573580644 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.productmodelproductdescription
ADD CONSTRAINT pk_productmodelproductdescription_productmodelid_productdescriptionid_culture_1125579048 PRIMARY KEY (productmodelid, productdescriptionid, culture);

ALTER TABLE m_adventureworks_saleslt.salesorderdetail
ADD CONSTRAINT ak_salesorderdetail_rowguid_1589580701 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.salesorderdetail
ADD CONSTRAINT ck_salesorderdetail_orderqty_258099960 CHECK (
(orderqty > (0)));

ALTER TABLE m_adventureworks_saleslt.salesorderdetail
ADD CONSTRAINT ck_salesorderdetail_unitprice_274100017 CHECK (
(unitprice >= (0.00)));

ALTER TABLE m_adventureworks_saleslt.salesorderdetail
ADD CONSTRAINT ck_salesorderdetail_unitpricediscount_290100074 CHECK (
(unitpricediscount >= (0.00)));

ALTER TABLE m_adventureworks_saleslt.salesorderdetail
ADD CONSTRAINT pk_salesorderdetail_salesorderid_salesorderdetailid_1349579846 PRIMARY KEY (salesorderid, salesorderdetailid);

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT ak_salesorderheader_rowguid_1605580758 UNIQUE (rowguid);

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT ak_salesorderheader_salesordernumber_1621580815 UNIQUE (salesordernumber);

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT ck_salesorderheader_duedate_306100131 CHECK (
(duedate >= orderdate));

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT ck_salesorderheader_freight_322100188 CHECK (
(freight >= (0.00)));

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT ck_salesorderheader_shipdate_338100245 CHECK (
(shipdate >= orderdate OR shipdate IS NULL));

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT ck_salesorderheader_status_354100302 CHECK (
(status >= (0) AND status <= (8)));

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT ck_salesorderheader_subtotal_370100359 CHECK (
(subtotal >= (0.00)));

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT ck_salesorderheader_taxamt_386100416 CHECK (
(taxamt >= (0.00)));

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT pk_salesorderheader_salesorderid_1381579960 PRIMARY KEY (salesorderid);

-- ------------ Write CREATE-FOREIGN-KEY-CONSTRAINT-stage scripts -----------

ALTER TABLE m_adventureworks_saleslt.customeraddress
ADD CONSTRAINT fk_customeraddress_address_addressid_2099048 FOREIGN KEY (addressid) 
REFERENCES m_adventureworks_saleslt.address (addressid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.customeraddress
ADD CONSTRAINT fk_customeraddress_customer_customerid_18099105 FOREIGN KEY (customerid) 
REFERENCES m_adventureworks_saleslt.customer (customerid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT fk_product_productcategory_productcategoryid_34099162 FOREIGN KEY (productcategoryid) 
REFERENCES m_adventureworks_saleslt.productcategory (productcategoryid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.product
ADD CONSTRAINT fk_product_productmodel_productmodelid_50099219 FOREIGN KEY (productmodelid) 
REFERENCES m_adventureworks_saleslt.productmodel (productmodelid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.productcategory
ADD CONSTRAINT fk_productcategory_productcategory_parentproductcategoryid_productcategoryid_66099276 FOREIGN KEY (parentproductcategoryid) 
REFERENCES m_adventureworks_saleslt.productcategory (productcategoryid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.productmodelproductdescription
ADD CONSTRAINT fk_productmodelproductdescription_productdescription_productdescriptionid_82099333 FOREIGN KEY (productdescriptionid) 
REFERENCES m_adventureworks_saleslt.productdescription (productdescriptionid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.productmodelproductdescription
ADD CONSTRAINT fk_productmodelproductdescription_productmodel_productmodelid_98099390 FOREIGN KEY (productmodelid) 
REFERENCES m_adventureworks_saleslt.productmodel (productmodelid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail
ADD CONSTRAINT fk_salesorderdetail_product_productid_114099447 FOREIGN KEY (productid) 
REFERENCES m_adventureworks_saleslt.product (productid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.salesorderdetail
ADD CONSTRAINT fk_salesorderdetail_salesorderheader_salesorderid_130099504 FOREIGN KEY (salesorderid) 
REFERENCES m_adventureworks_saleslt.salesorderheader (salesorderid)
ON UPDATE NO ACTION
ON DELETE CASCADE;

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT fk_salesorderheader_address_billto_addressid_146099561 FOREIGN KEY (billtoaddressid) 
REFERENCES m_adventureworks_saleslt.address (addressid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT fk_salesorderheader_address_shipto_addressid_162099618 FOREIGN KEY (shiptoaddressid) 
REFERENCES m_adventureworks_saleslt.address (addressid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE m_adventureworks_saleslt.salesorderheader
ADD CONSTRAINT fk_salesorderheader_customer_customerid_178099675 FOREIGN KEY (customerid) 
REFERENCES m_adventureworks_saleslt.customer (customerid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

