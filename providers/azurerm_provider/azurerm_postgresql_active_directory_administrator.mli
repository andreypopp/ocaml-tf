(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_active_directory_administrator__timeouts
type azurerm_postgresql_active_directory_administrator

val azurerm_postgresql_active_directory_administrator :
  ?id:string ->
  ?timeouts:
    azurerm_postgresql_active_directory_administrator__timeouts ->
  login:string ->
  object_id:string ->
  resource_group_name:string ->
  server_name:string ->
  tenant_id:string ->
  string ->
  unit
