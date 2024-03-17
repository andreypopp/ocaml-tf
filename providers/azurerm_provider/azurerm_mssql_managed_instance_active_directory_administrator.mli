(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_instance_active_directory_administrator__timeouts

type azurerm_mssql_managed_instance_active_directory_administrator

val azurerm_mssql_managed_instance_active_directory_administrator :
  ?azuread_authentication_only:bool ->
  ?id:string ->
  ?timeouts:
    azurerm_mssql_managed_instance_active_directory_administrator__timeouts ->
  login_username:string ->
  managed_instance_id:string ->
  object_id:string ->
  tenant_id:string ->
  string ->
  unit
