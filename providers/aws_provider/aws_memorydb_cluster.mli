(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_cluster__timeouts

type aws_memorydb_cluster__cluster_endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards__nodes__endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards__nodes = {
  availability_zone : string;  (** availability_zone *)
  create_time : string;  (** create_time *)
  endpoint : aws_memorydb_cluster__shards__nodes__endpoint list;
      (** endpoint *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards = {
  name : string;  (** name *)
  nodes : aws_memorydb_cluster__shards__nodes list;  (** nodes *)
  num_nodes : float;  (** num_nodes *)
  slots : string;  (** slots *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster

val aws_memorydb_cluster :
  ?auto_minor_version_upgrade:bool ->
  ?data_tiering:bool ->
  ?description:string ->
  ?final_snapshot_name:string ->
  ?kms_key_arn:string ->
  ?num_replicas_per_shard:float ->
  ?num_shards:float ->
  ?security_group_ids:string list ->
  ?snapshot_arns:string list ->
  ?snapshot_name:string ->
  ?sns_topic_arn:string ->
  ?tags:(string * string) list ->
  ?tls_enabled:bool ->
  ?timeouts:aws_memorydb_cluster__timeouts ->
  acl_name:string ->
  node_type:string ->
  string ->
  unit
