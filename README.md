# data-platform-contract-sql 

data-platform-contract-sql は、データ連携基盤において、契約データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-contract-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-contract-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-contract-sql-header-data.sql（データ連携基盤 契約 - ヘッダデータ）
* data-platform-contract-sql-header-doc-data.sql（データ連携基盤 契約 - ヘッダ文書データ）
* data-platform-contract-sql-item-data.sql（データ連携基盤 契約 - 明細データ）
* data-platform-contract-sql-item-doc-data.sql（データ連携基盤 契約 - 明細文書データ）
* data-platform-contract-sql-item-pricing-element-data.sql（データ連携基盤 契約 - 明細価格決定要素データ）
* data-platform-contract-sql-partner-data.sql（データ連携基盤 契約 - 取引先データ）
* data-platform-contract-sql-address-data.sql（データ連携基盤 契約 - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
