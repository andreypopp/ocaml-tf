(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type log_delivery_configuration = {
  destination : string prop;  (** destination *)
  destination_type : string prop;  (** destination_type *)
  log_format : string prop;  (** log_format *)
  log_type : string prop;  (** log_type *)
}

type aws_elasticache_replication_group

val aws_elasticache_replication_group :
  ?id:string prop ->
  replication_group_id:string prop ->
  unit ->
  aws_elasticache_replication_group

val yojson_of_aws_elasticache_replication_group :
  aws_elasticache_replication_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auth_token_enabled : bool prop;
  automatic_failover_enabled : bool prop;
  configuration_endpoint_address : string prop;
  description : string prop;
  id : string prop;
  log_delivery_configuration : log_delivery_configuration list prop;
  member_clusters : string list prop;
  multi_az_enabled : bool prop;
  node_type : string prop;
  num_cache_clusters : float prop;
  num_node_groups : float prop;
  port : float prop;
  primary_endpoint_address : string prop;
  reader_endpoint_address : string prop;
  replicas_per_node_group : float prop;
  replication_group_id : string prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  replication_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  replication_group_id:string prop ->
  string ->
  t Tf_core.resource
