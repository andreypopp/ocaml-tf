(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_flexible_server_active_directory_administrator__timeouts

type azurerm_mysql_flexible_server_active_directory_administrator

val azurerm_mysql_flexible_server_active_directory_administrator :
  ?id:string ->
  ?timeouts:
    azurerm_mysql_flexible_server_active_directory_administrator__timeouts ->
  identity_id:string ->
  login:string ->
  object_id:string ->
  server_id:string ->
  tenant_id:string ->
  string ->
  unit
