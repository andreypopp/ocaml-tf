(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_global_replication_group__timeouts

type aws_elasticache_global_replication_group__global_node_groups = {
  global_node_group_id : string prop;  (** global_node_group_id *)
  slots : string prop;  (** slots *)
}

type aws_elasticache_global_replication_group

val aws_elasticache_global_replication_group :
  ?automatic_failover_enabled:bool prop ->
  ?cache_node_type:string prop ->
  ?engine_version:string prop ->
  ?global_replication_group_description:string prop ->
  ?id:string prop ->
  ?num_node_groups:float prop ->
  ?parameter_group_name:string prop ->
  ?timeouts:aws_elasticache_global_replication_group__timeouts ->
  global_replication_group_id_suffix:string prop ->
  primary_replication_group_id:string prop ->
  string ->
  unit
