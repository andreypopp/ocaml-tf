(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_elasticpool__per_database_settings
type azurerm_mssql_elasticpool__sku
type azurerm_mssql_elasticpool__timeouts
type azurerm_mssql_elasticpool

type t = private {
  enclave_type : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  maintenance_configuration_name : string prop;
  max_size_bytes : float prop;
  max_size_gb : float prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

val azurerm_mssql_elasticpool :
  ?enclave_type:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?max_size_bytes:float prop ->
  ?max_size_gb:float prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:azurerm_mssql_elasticpool__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  per_database_settings:
    azurerm_mssql_elasticpool__per_database_settings list ->
  sku:azurerm_mssql_elasticpool__sku list ->
  string ->
  t
