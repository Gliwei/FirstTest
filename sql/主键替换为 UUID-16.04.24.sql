CREATE TABLE brand(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	name VARCHAR(30) NOT NULL,
	enName VARCHAR(30),
	logoBigUrl VARCHAR(100),
	logoSamllUrl VARCHAR(100),
	description VARCHAR(200)
);

CREATE TABLE category(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	parentId VARCHAR(32),
	FOREIGN KEY(parentId) REFERENCES category(id),

	name VARCHAR(30) NOT NULL,
	description VARCHAR(200)
);

CREATE TABLE product(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	spu VARCHAR(30) NOT NULL,
	title VARCHAR(100) NOT NULL,
	subtitle VARCHAR(100),
	htmlDescription MEDIUMTEXT,

	brandId VARCHAR(32),-- 所属品牌
	FOREIGN KEY(brandId) REFERENCES brand(id),
	categoryId VARCHAR(32), -- 所属分类
	FOREIGN KEY(categoryId) REFERENCES category(id)
);

CREATE TABLE commodity(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	productId VARCHAR(32),-- 所属的货品
	FOREIGN KEY(productId) REFERENCES product(id),

	sku VARCHAR(30) NOT NULL,
	title VARCHAR(100) NOT NULL,
	subtitle VARCHAR(100),
	salePrice DECIMAL NOT NULL,
	costPrice DECIMAL NOT NULL,
	mainPicture VARCHAR(100) NOT NULL,
	htmlDescription MEDIUMTEXT
);

CREATE TABLE property(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	productId VARCHAR(32), -- 所属产品
	FOREIGN KEY(productId) REFERENCES product(id),
	name VARCHAR(30) NOT NULL
);

CREATE TABLE propertyItem(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	propertyId VARCHAR(32), -- 所属属性
	FOREIGN KEY(propertyId) REFERENCES property(id),
	itemName VARCHAR(30) NOT NULL
);

CREATE TABLE commodity2propertyItem(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	propertyItemId VARCHAR(32), -- 属性选项ID
	FOREIGN KEY(propertyItemId) REFERENCES propertyItem(id),
	commodityId VARCHAR(32), -- 商品ID
	FOREIGN KEY(commodityId) REFERENCES commodity(id),
	propertyName VARCHAR(30),
	itemName VARCHAR(30)
);

CREATE TABLE spec(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	categoryId VARCHAR(32), -- 所属分类
	FOREIGN KEY(categoryId) REFERENCES category(id),

	name VARCHAR(30) NOT NULL
);

CREATE TABLE specItem(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30) DEFAULT 0,
	lastOperator VARCHAR(20),
	createTime TIMESTAMP DEFAULT '1990-11-11 11:11:11',
	lastModifyTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	specId VARCHAR(32), -- 所属规格 
	FOREIGN KEY(specId) REFERENCES spec(id),
	itemName VARCHAR(30) NOT NULL
);

CREATE TABLE commodity2specItem(
	id VARCHAR(32) PRIMARY KEY,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	commodityId VARCHAR(32), -- 商品ID
	FOREIGN KEY(commodityId) REFERENCES commodity(id),
	specItemId VARCHAR(32), -- 规格选项ID
	FOREIGN KEY(specItemId) REFERENCES specItem(id)
);