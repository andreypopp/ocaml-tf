(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type module_

val module_ :
  ?args:string prop -> name:string prop -> unit -> module_

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_redis_enterprise_database

val azurerm_redis_enterprise_database :
  ?client_protocol:string prop ->
  ?clustering_policy:string prop ->
  ?eviction_policy:string prop ->
  ?id:string prop ->
  ?linked_database_group_nickname:string prop ->
  ?linked_database_id:string prop list ->
  ?name:string prop ->
  ?port:float prop ->
  ?resource_group_name:string prop ->
  ?module_:module_ list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  unit ->
  azurerm_redis_enterprise_database

val yojson_of_azurerm_redis_enterprise_database :
  azurerm_redis_enterprise_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_protocol : string prop;
  cluster_id : string prop;
  clustering_policy : string prop;
  eviction_policy : string prop;
  id : string prop;
  linked_database_group_nickname : string prop;
  linked_database_id : string list prop;
  name : string prop;
  port : float prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_protocol:string prop ->
  ?clustering_policy:string prop ->
  ?eviction_policy:string prop ->
  ?id:string prop ->
  ?linked_database_group_nickname:string prop ->
  ?linked_database_id:string prop list ->
  ?name:string prop ->
  ?port:float prop ->
  ?resource_group_name:string prop ->
  ?module_:module_ list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  string ->
  t

val make :
  ?client_protocol:string prop ->
  ?clustering_policy:string prop ->
  ?eviction_policy:string prop ->
  ?id:string prop ->
  ?linked_database_group_nickname:string prop ->
  ?linked_database_id:string prop list ->
  ?name:string prop ->
  ?port:float prop ->
  ?resource_group_name:string prop ->
  ?module_:module_ list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  string ->
  t Tf_core.resource
