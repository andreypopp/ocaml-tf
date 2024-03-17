(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_global_replication_group__timeouts

type aws_elasticache_global_replication_group__global_node_groups = {
  global_node_group_id : string;  (** global_node_group_id *)
  slots : string;  (** slots *)
}

type aws_elasticache_global_replication_group

val aws_elasticache_global_replication_group :
  ?automatic_failover_enabled:bool ->
  ?cache_node_type:string ->
  ?engine_version:string ->
  ?global_replication_group_description:string ->
  ?id:string ->
  ?num_node_groups:float ->
  ?parameter_group_name:string ->
  ?timeouts:aws_elasticache_global_replication_group__timeouts ->
  global_replication_group_id_suffix:string ->
  primary_replication_group_id:string ->
  string ->
  unit
