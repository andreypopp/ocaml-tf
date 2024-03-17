(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_virtual_machine_group__timeouts
type azurerm_mssql_virtual_machine_group__wsfc_domain_profile
type azurerm_mssql_virtual_machine_group

val azurerm_mssql_virtual_machine_group :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mssql_virtual_machine_group__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sql_image_offer:string ->
  sql_image_sku:string ->
  wsfc_domain_profile:
    azurerm_mssql_virtual_machine_group__wsfc_domain_profile list ->
  string ->
  unit
