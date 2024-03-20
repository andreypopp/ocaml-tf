(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_postgresql_flexible_server_active_directory_administrator

val azurerm_postgresql_flexible_server_active_directory_administrator :
  ?id:string prop ->
  ?timeouts:timeouts ->
  object_id:string prop ->
  principal_name:string prop ->
  principal_type:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_postgresql_flexible_server_active_directory_administrator

val yojson_of_azurerm_postgresql_flexible_server_active_directory_administrator :
  azurerm_postgresql_flexible_server_active_directory_administrator ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  object_id : string prop;
  principal_name : string prop;
  principal_type : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  object_id:string prop ->
  principal_name:string prop ->
  principal_type:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  object_id:string prop ->
  principal_name:string prop ->
  principal_type:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
