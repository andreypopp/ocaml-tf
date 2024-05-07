(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cache_nodes = {
  address : string prop;  (** address *)
  availability_zone : string prop;  (** availability_zone *)
  id : string prop;  (** id *)
  outpost_arn : string prop;  (** outpost_arn *)
  port : float prop;  (** port *)
}

type log_delivery_configuration = {
  destination : string prop;  (** destination *)
  destination_type : string prop;  (** destination_type *)
  log_format : string prop;  (** log_format *)
  log_type : string prop;  (** log_type *)
}

type aws_elasticache_cluster

val aws_elasticache_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_id:string prop ->
  unit ->
  aws_elasticache_cluster

val yojson_of_aws_elasticache_cluster :
  aws_elasticache_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  cache_nodes : cache_nodes list prop;
  cluster_address : string prop;
  cluster_id : string prop;
  configuration_endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  ip_discovery : string prop;
  log_delivery_configuration : log_delivery_configuration list prop;
  maintenance_window : string prop;
  network_type : string prop;
  node_type : string prop;
  notification_topic_arn : string prop;
  num_cache_nodes : float prop;
  parameter_group_name : string prop;
  port : float prop;
  preferred_outpost_arn : string prop;
  replication_group_id : string prop;
  security_group_ids : string list prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_id:string prop ->
  string ->
  t Tf_core.resource
