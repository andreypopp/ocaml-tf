(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_active_directory_administrator__timeouts
type azurerm_postgresql_active_directory_administrator

type t = private {
  id : string prop;
  login : string prop;
  object_id : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
}

val azurerm_postgresql_active_directory_administrator :
  ?id:string prop ->
  ?timeouts:
    azurerm_postgresql_active_directory_administrator__timeouts ->
  login:string prop ->
  object_id:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  string ->
  t
