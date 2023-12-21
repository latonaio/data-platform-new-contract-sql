CREATE TABLE `data_platform_contract_item_pricing_element_data`
(
  `Contract`                    int(16) NOT NULL,
  `ContractItem`                int(6) NOT NULL,
  `PricingProcedureCounter`     int(3) NOT NULL,
  `SupplyChainRelationshipID`   int(16) NOT NULL,
  `Buyer`                       int(12) NOT NULL,
  `Seller`                      int(12) NOT NULL,
  `ConditionRecord`             int(12) NOT NULL,
  `ConditionSequentialNumber`   int(2) NOT NULL,
  `ConditionType`               varchar(4) NOT NULL,
  `PricingDate`                 date NOT NULL,
  `ConditionRateValue`          float(13) NOT NULL,
  `ConditionRateValueUnit`      int(6) NOT NULL,
  `ConditionScaleQuantity`      int(13) NOT NULL,
  `ConditionCurrency`           varchar(5) NOT NULL,
  `ConditionQuantity`           float(15) NOT NULL,
  `TaxCode`                     varchar(1) DEFAULT NULL,
  `ConditionAmount`             float(13) NOT NULL,
  `TransactionCurrency`         varchar(5) NOT NULL,
  `ConditionIsManuallyChanged`  tinyint(1) DEFAULT NULL,
  `CreationDate`                date NOT NULL,
  `CreationTime`                time NOT NULL,
  `LastChangeDate`              date NOT NULL,
  `LastChangeTime`              time NOT NULL,
  `IsCancelled`                 tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`Contract`, `ContractItem`, `PricingProcedureCounter`),
    
  CONSTRAINT `DPFMContractItemPricingElementData_fk` FOREIGN KEY (`Contract`, `ContractItem`) REFERENCES `data_platform_contract_item_data` (`Contract`, `ContractItem`),
  CONSTRAINT `DPFMContractItemPricingElementDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_scr_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`)
  
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
