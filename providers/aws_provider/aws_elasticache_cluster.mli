(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_cluster__log_delivery_configuration

type aws_elasticache_cluster__cache_nodes = {
  address : string;  (** address *)
  availability_zone : string;  (** availability_zone *)
  id : string;  (** id *)
  outpost_arn : string;  (** outpost_arn *)
  port : float;  (** port *)
}

type aws_elasticache_cluster

val aws_elasticache_cluster :
  ?apply_immediately:bool ->
  ?auto_minor_version_upgrade:string ->
  ?availability_zone:string ->
  ?az_mode:string ->
  ?engine:string ->
  ?engine_version:string ->
  ?final_snapshot_identifier:string ->
  ?id:string ->
  ?ip_discovery:string ->
  ?maintenance_window:string ->
  ?network_type:string ->
  ?node_type:string ->
  ?notification_topic_arn:string ->
  ?num_cache_nodes:float ->
  ?outpost_mode:string ->
  ?parameter_group_name:string ->
  ?port:float ->
  ?preferred_availability_zones:string list ->
  ?preferred_outpost_arn:string ->
  ?replication_group_id:string ->
  ?security_group_ids:string list ->
  ?snapshot_arns:string list ->
  ?snapshot_name:string ->
  ?snapshot_retention_limit:float ->
  ?snapshot_window:string ->
  ?subnet_group_name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?transit_encryption_enabled:bool ->
  cluster_id:string ->
  log_delivery_configuration:
    aws_elasticache_cluster__log_delivery_configuration list ->
  string ->
  unit
