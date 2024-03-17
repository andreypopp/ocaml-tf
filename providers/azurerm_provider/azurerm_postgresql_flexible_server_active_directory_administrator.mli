(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_flexible_server_active_directory_administrator__timeouts

type azurerm_postgresql_flexible_server_active_directory_administrator

val azurerm_postgresql_flexible_server_active_directory_administrator :
  ?timeouts:
    azurerm_postgresql_flexible_server_active_directory_administrator__timeouts ->
  object_id:string ->
  principal_name:string ->
  principal_type:string ->
  resource_group_name:string ->
  server_name:string ->
  tenant_id:string ->
  string ->
  unit
