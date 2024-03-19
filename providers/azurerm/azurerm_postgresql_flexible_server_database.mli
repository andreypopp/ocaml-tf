(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_postgresql_flexible_server_database

val azurerm_postgresql_flexible_server_database :
  ?charset:string prop ->
  ?collation:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  unit ->
  azurerm_postgresql_flexible_server_database

val yojson_of_azurerm_postgresql_flexible_server_database :
  azurerm_postgresql_flexible_server_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  charset : string prop;
  collation : string prop;
  id : string prop;
  name : string prop;
  server_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?charset:string prop ->
  ?collation:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t
