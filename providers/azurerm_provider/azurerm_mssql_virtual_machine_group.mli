(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_virtual_machine_group__timeouts
type azurerm_mssql_virtual_machine_group__wsfc_domain_profile
type azurerm_mssql_virtual_machine_group

val azurerm_mssql_virtual_machine_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mssql_virtual_machine_group__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sql_image_offer:string prop ->
  sql_image_sku:string prop ->
  wsfc_domain_profile:
    azurerm_mssql_virtual_machine_group__wsfc_domain_profile list ->
  string ->
  unit
