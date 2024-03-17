(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_enterprise_database__module
type azurerm_redis_enterprise_database__timeouts
type azurerm_redis_enterprise_database

type t = private {
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
  ?timeouts:azurerm_redis_enterprise_database__timeouts ->
  cluster_id:string prop ->
  module_:azurerm_redis_enterprise_database__module list ->
  string ->
  t
