(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_global_replication_group__timeouts

type aws_elasticache_global_replication_group__global_node_groups = {
  global_node_group_id : string prop;  (** global_node_group_id *)
  slots : string prop;  (** slots *)
}

type aws_elasticache_global_replication_group

type t = private {
  arn : string prop;
  at_rest_encryption_enabled : bool prop;
  auth_token_enabled : bool prop;
  automatic_failover_enabled : bool prop;
  cache_node_type : string prop;
  cluster_enabled : bool prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  global_node_groups :
    aws_elasticache_global_replication_group__global_node_groups list
    prop;
  global_replication_group_description : string prop;
  global_replication_group_id : string prop;
  global_replication_group_id_suffix : string prop;
  id : string prop;
  num_node_groups : float prop;
  parameter_group_name : string prop;
  primary_replication_group_id : string prop;
  transit_encryption_enabled : bool prop;
}

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
  t
