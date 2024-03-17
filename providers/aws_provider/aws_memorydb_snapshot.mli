(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_snapshot__timeouts

type aws_memorydb_snapshot__cluster_configuration = {
  description : string;  (** description *)
  engine_version : string;  (** engine_version *)
  maintenance_window : string;  (** maintenance_window *)
  name : string;  (** name *)
  node_type : string;  (** node_type *)
  num_shards : float;  (** num_shards *)
  parameter_group_name : string;  (** parameter_group_name *)
  port : float;  (** port *)
  snapshot_retention_limit : float;  (** snapshot_retention_limit *)
  snapshot_window : string;  (** snapshot_window *)
  subnet_group_name : string;  (** subnet_group_name *)
  topic_arn : string;  (** topic_arn *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_memorydb_snapshot

val aws_memorydb_snapshot :
  ?kms_key_arn:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_memorydb_snapshot__timeouts ->
  cluster_name:string ->
  string ->
  unit
