(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_cluster__log_delivery_configuration

type aws_elasticache_cluster__cache_nodes = {
  address : string prop;  (** address *)
  availability_zone : string prop;  (** availability_zone *)
  id : string prop;  (** id *)
  outpost_arn : string prop;  (** outpost_arn *)
  port : float prop;  (** port *)
}

type aws_elasticache_cluster

type t = private {
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : string prop;
  availability_zone : string prop;
  az_mode : string prop;
  cache_nodes : aws_elasticache_cluster__cache_nodes list prop;
  cluster_address : string prop;
  cluster_id : string prop;
  configuration_endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  final_snapshot_identifier : string prop;
  id : string prop;
  ip_discovery : string prop;
  maintenance_window : string prop;
  network_type : string prop;
  node_type : string prop;
  notification_topic_arn : string prop;
  num_cache_nodes : float prop;
  outpost_mode : string prop;
  parameter_group_name : string prop;
  port : float prop;
  preferred_availability_zones : string list prop;
  preferred_outpost_arn : string prop;
  replication_group_id : string prop;
  security_group_ids : string list prop;
  snapshot_arns : string list prop;
  snapshot_name : string prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_encryption_enabled : bool prop;
}

val aws_elasticache_cluster :
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:string prop ->
  ?availability_zone:string prop ->
  ?az_mode:string prop ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?id:string prop ->
  ?ip_discovery:string prop ->
  ?maintenance_window:string prop ->
  ?network_type:string prop ->
  ?node_type:string prop ->
  ?notification_topic_arn:string prop ->
  ?num_cache_nodes:float prop ->
  ?outpost_mode:string prop ->
  ?parameter_group_name:string prop ->
  ?port:float prop ->
  ?preferred_availability_zones:string prop list ->
  ?preferred_outpost_arn:string prop ->
  ?replication_group_id:string prop ->
  ?security_group_ids:string prop list ->
  ?snapshot_arns:string prop list ->
  ?snapshot_name:string prop ->
  ?snapshot_retention_limit:float prop ->
  ?snapshot_window:string prop ->
  ?subnet_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_encryption_enabled:bool prop ->
  cluster_id:string prop ->
  log_delivery_configuration:
    aws_elasticache_cluster__log_delivery_configuration list ->
  string ->
  t
