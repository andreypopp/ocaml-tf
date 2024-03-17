(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_enterprise_database__module
type azurerm_redis_enterprise_database__timeouts
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
  ?timeouts:azurerm_redis_enterprise_database__timeouts ->
  cluster_id:string prop ->
  module_:azurerm_redis_enterprise_database__module list ->
  string ->
  unit
