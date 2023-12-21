CREATE TABLE `data_platform_contract_item_doc_data`
(
  `Contract`                       int(16) NOT NULL,
  `ContractItem`                   int(6) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`Contract`, `ContractItem`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DPFMContractItemDocData_fk` FOREIGN KEY (`Contract`, `ContractItem`) REFERENCES `data_platform_contract_item_data` (`Contract`, `ContractItem`),
    CONSTRAINT `DPFMContractItemDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMContractItemDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
