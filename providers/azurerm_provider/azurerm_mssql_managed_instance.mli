(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_instance__identity
type azurerm_mssql_managed_instance__timeouts
type azurerm_mssql_managed_instance

val azurerm_mssql_managed_instance :
  ?collation:string ->
  ?dns_zone_partner_id:string ->
  ?maintenance_configuration_name:string ->
  ?minimum_tls_version:string ->
  ?proxy_override:string ->
  ?public_data_endpoint_enabled:bool ->
  ?storage_account_type:string ->
  ?tags:(string * string) list ->
  ?timezone_id:string ->
  ?zone_redundant_enabled:bool ->
  ?timeouts:azurerm_mssql_managed_instance__timeouts ->
  administrator_login:string ->
  administrator_login_password:string ->
  license_type:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  storage_size_in_gb:float ->
  subnet_id:string ->
  vcores:float ->
  identity:azurerm_mssql_managed_instance__identity list ->
  string ->
  unit
