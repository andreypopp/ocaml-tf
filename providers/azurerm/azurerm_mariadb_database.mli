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

type azurerm_mariadb_database

val azurerm_mariadb_database :
  ?id:string prop ->
  ?timeouts:timeouts ->
  charset:string prop ->
  collation:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  unit ->
  azurerm_mariadb_database

val yojson_of_azurerm_mariadb_database :
  azurerm_mariadb_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  charset : string prop;
  collation : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  charset:string prop ->
  collation:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  charset:string prop ->
  collation:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t Tf_core.resource
