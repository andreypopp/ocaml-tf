(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_enterprise_database__module
type azurerm_redis_enterprise_database__timeouts
type azurerm_redis_enterprise_database

val azurerm_redis_enterprise_database :
  ?client_protocol:string ->
  ?clustering_policy:string ->
  ?eviction_policy:string ->
  ?id:string ->
  ?linked_database_group_nickname:string ->
  ?linked_database_id:string list ->
  ?name:string ->
  ?port:float ->
  ?resource_group_name:string ->
  ?timeouts:azurerm_redis_enterprise_database__timeouts ->
  cluster_id:string ->
  module_:azurerm_redis_enterprise_database__module list ->
  string ->
  unit
