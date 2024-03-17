(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_elasticpool__per_database_settings
type azurerm_mssql_elasticpool__sku
type azurerm_mssql_elasticpool__timeouts
type azurerm_mssql_elasticpool

val azurerm_mssql_elasticpool :
  ?enclave_type:string ->
  ?id:string ->
  ?license_type:string ->
  ?maintenance_configuration_name:string ->
  ?max_size_bytes:float ->
  ?max_size_gb:float ->
  ?tags:(string * string) list ->
  ?zone_redundant:bool ->
  ?timeouts:azurerm_mssql_elasticpool__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  per_database_settings:
    azurerm_mssql_elasticpool__per_database_settings list ->
  sku:azurerm_mssql_elasticpool__sku list ->
  string ->
  unit
