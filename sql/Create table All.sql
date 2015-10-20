
CREATE TABLE G_Product(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	spu VARCHAR(30) NOT NULL,
	title VARCHAR(100) NOT NULL,
	subtitle VARCHAR(100),
	htmlDescription VARCHAR(99999)
);

CREATE TABLE G_Brand(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	name VARCHAR(30) NOT NULL,
	description VARCHAR(200)
);

CREATE TABLE G_Category(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	parentId INTEGER(30),
	FOREIGN KEY(parentId) REFERENCES G_Category(id),

	name VARCHAR(30) NOT NULL,
	description VARCHAR(200)
);

CREATE TABLE G_Commodity(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	productId INTEGER(30),-- 所属的货品
	FOREIGN KEY(productId) REFERENCES G_Product(id),
	brandId INTEGER(30),-- 所属品牌
	FOREIGN KEY(brandId) REFERENCES G_Brand(id),
	categoryId INTEGER(30), -- 所属分类
	FOREIGN KEY(categoryId) REFERENCES G_Category(id),

	sku VARCHAR(30) NOT NULL,
	title VARCHAR(100) NOT NULL,
	subtitle VARCHAR(100),
	salePrice DECIMAL NOT NULL,
	costPrice DECIMAL NOT NULL,
	mainPicture VARCHAR(100) NOT NULL,
	htmlDescription VARCHAR(99999)
);

CREATE TABLE G_Property(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	categoryId INTEGER(30), -- 所属分类
	FOREIGN KEY(categoryId) REFERENCES G_Category(id),
	name VARCHAR(30) NOT NULL
);

CREATE TABLE G_PropertyItem(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	propertyId INTEGER(30), -- 所属属性
	FOREIGN KEY(propertyId) REFERENCES G_Property(id),
	itemName VARCHAR(30) NOT NULL
);

CREATE TABLE G_Commodity2PropertyItem(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	propertyItemId INTEGER(30), -- 属性选项ID
	FOREIGN KEY(propertyItemId) REFERENCES G_PropertyItem(id),
	commodityId INTEGER(30), -- 商品ID
	FOREIGN KEY(commodityId) REFERENCES G_Commodity(id),
	propertyName VARCHAR(30),
	itemName VARCHAR(30)
);

CREATE TABLE G_Spec(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	name VARCHAR(30) NOT NULL
);

CREATE TABLE G_SpecItem(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	specId INTEGER(30), -- 所属规格 
	FOREIGN KEY(specId) REFERENCES G_Spec(id),
	itemName VARCHAR(30) NOT NULL
);

CREATE TABLE G_Product2Spec(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	productId INTEGER(30), -- 货品ID
	FOREIGN KEY(productId) REFERENCES G_Product(id),
	specId INTEGER(30), -- 规格ID
	FOREIGN KEY(specId) REFERENCES G_Spec(id)
);
CREATE TABLE G_Commodity2SpecItem(
	id INTEGER(30) PRIMARY KEY AUTO_INCREMENT,
	version INTEGER(30),
	lastOperator VARCHAR(20),
	createTime TIMESTAMP,
	lastModifyTime TIMESTAMP,

	commodityId INTEGER(30), -- 商品ID
	FOREIGN KEY(commodityId) REFERENCES G_Commodity(id),
	specItemId INTEGER(30), -- 规格选项ID
	FOREIGN KEY(specItemId) REFERENCES G_SpecItem(id)
);
