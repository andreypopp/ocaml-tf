(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_active_directory_administrator__timeouts
type azurerm_mysql_active_directory_administrator

val azurerm_mysql_active_directory_administrator :
  ?id:string prop ->
  ?timeouts:azurerm_mysql_active_directory_administrator__timeouts ->
  login:string prop ->
  object_id:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  string ->
  unit
