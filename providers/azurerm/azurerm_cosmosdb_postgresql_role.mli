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

type azurerm_cosmosdb_postgresql_role

val azurerm_cosmosdb_postgresql_role :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  password:string prop ->
  unit ->
  azurerm_cosmosdb_postgresql_role

val yojson_of_azurerm_cosmosdb_postgresql_role :
  azurerm_cosmosdb_postgresql_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  password:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  password:string prop ->
  string ->
  t Tf_core.resource
