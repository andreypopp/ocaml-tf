(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_managed_instance_active_directory_administrator__timeouts

type azurerm_sql_managed_instance_active_directory_administrator

val azurerm_sql_managed_instance_active_directory_administrator :
  ?azuread_authentication_only:bool ->
  ?id:string ->
  ?timeouts:
    azurerm_sql_managed_instance_active_directory_administrator__timeouts ->
  login:string ->
  managed_instance_name:string ->
  object_id:string ->
  resource_group_name:string ->
  tenant_id:string ->
  string ->
  unit
