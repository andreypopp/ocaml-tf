(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_flexible_server_active_directory_administrator__timeouts

type azurerm_mysql_flexible_server_active_directory_administrator

val azurerm_mysql_flexible_server_active_directory_administrator :
  ?id:string prop ->
  ?timeouts:
    azurerm_mysql_flexible_server_active_directory_administrator__timeouts ->
  identity_id:string prop ->
  login:string prop ->
  object_id:string prop ->
  server_id:string prop ->
  tenant_id:string prop ->
  string ->
  unit
