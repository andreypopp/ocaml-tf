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
[@@deriving yojson_of]

type aws_elasticache_cluster

val aws_elasticache_cluster :
  ?auto_minor_version_upgrade:string ->
  ?final_snapshot_identifier:string ->
  ?notification_topic_arn:string ->
  ?outpost_mode:string ->
  ?preferred_availability_zones:string list ->
  ?snapshot_arns:string list ->
  ?snapshot_name:string ->
  ?snapshot_retention_limit:float ->
  ?tags:(string * string) list ->
  cluster_id:string ->
  log_delivery_configuration:
    aws_elasticache_cluster__log_delivery_configuration list ->
  string ->
  unit
