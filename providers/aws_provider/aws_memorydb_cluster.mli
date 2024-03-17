(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_cluster__timeouts

type aws_memorydb_cluster__cluster_endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}

type aws_memorydb_cluster__shards__nodes__endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}

type aws_memorydb_cluster__shards__nodes = {
  availability_zone : string;  (** availability_zone *)
  create_time : string;  (** create_time *)
  endpoint : aws_memorydb_cluster__shards__nodes__endpoint list;
      (** endpoint *)
  name : string;  (** name *)
}

type aws_memorydb_cluster__shards = {
  name : string;  (** name *)
  nodes : aws_memorydb_cluster__shards__nodes list;  (** nodes *)
  num_nodes : float;  (** num_nodes *)
  slots : string;  (** slots *)
}

type aws_memorydb_cluster

val aws_memorydb_cluster :
  ?auto_minor_version_upgrade:bool ->
  ?data_tiering:bool ->
  ?description:string ->
  ?engine_version:string ->
  ?final_snapshot_name:string ->
  ?id:string ->
  ?kms_key_arn:string ->
  ?maintenance_window:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?num_replicas_per_shard:float ->
  ?num_shards:float ->
  ?parameter_group_name:string ->
  ?port:float ->
  ?security_group_ids:string list ->
  ?snapshot_arns:string list ->
  ?snapshot_name:string ->
  ?snapshot_retention_limit:float ->
  ?snapshot_window:string ->
  ?sns_topic_arn:string ->
  ?subnet_group_name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?tls_enabled:bool ->
  ?timeouts:aws_memorydb_cluster__timeouts ->
  acl_name:string ->
  node_type:string ->
  string ->
  unit
