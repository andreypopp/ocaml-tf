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

type azurerm_postgresql_server_key

val azurerm_postgresql_server_key :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_key_id:string prop ->
  server_id:string prop ->
  unit ->
  azurerm_postgresql_server_key

val yojson_of_azurerm_postgresql_server_key :
  azurerm_postgresql_server_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key_vault_key_id : string prop;
  server_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_key_id:string prop ->
  server_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_key_id:string prop ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
