(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sql_active_directory_administrator

val azurerm_sql_active_directory_administrator :
  ?azuread_authentication_only:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  login:string prop ->
  object_id:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_sql_active_directory_administrator

val yojson_of_azurerm_sql_active_directory_administrator :
  azurerm_sql_active_directory_administrator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  azuread_authentication_only : bool prop;
  id : string prop;
  login : string prop;
  object_id : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?azuread_authentication_only:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  login:string prop ->
  object_id:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  string ->
  t
