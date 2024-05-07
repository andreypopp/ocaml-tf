(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_redis_enterprise_database

val azurerm_redis_enterprise_database :
  ?id:string prop ->
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_redis_enterprise_database

val yojson_of_azurerm_redis_enterprise_database :
  azurerm_redis_enterprise_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_id : string prop;
  id : string prop;
  linked_database_group_nickname : string prop;
  linked_database_id : string list prop;
  name : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
