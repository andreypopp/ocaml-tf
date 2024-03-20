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

type azurerm_postgresql_flexible_server_configuration

val azurerm_postgresql_flexible_server_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  value:string prop ->
  unit ->
  azurerm_postgresql_flexible_server_configuration

val yojson_of_azurerm_postgresql_flexible_server_configuration :
  azurerm_postgresql_flexible_server_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  server_id : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  value:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource
