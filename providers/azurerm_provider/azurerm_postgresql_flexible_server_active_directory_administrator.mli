(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_flexible_server_active_directory_administrator__timeouts

type azurerm_postgresql_flexible_server_active_directory_administrator

val azurerm_postgresql_flexible_server_active_directory_administrator :
  ?id:string prop ->
  ?timeouts:
    azurerm_postgresql_flexible_server_active_directory_administrator__timeouts ->
  object_id:string prop ->
  principal_name:string prop ->
  principal_type:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  string ->
  unit
