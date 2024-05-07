(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mysql_active_directory_administrator

val azurerm_mysql_active_directory_administrator :
  ?id:string prop ->
  ?timeouts:timeouts ->
  login:string prop ->
  object_id:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_mysql_active_directory_administrator

val yojson_of_azurerm_mysql_active_directory_administrator :
  azurerm_mysql_active_directory_administrator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  login : string prop;
  object_id : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  login:string prop ->
  object_id:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  login:string prop ->
  object_id:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
