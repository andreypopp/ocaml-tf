(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cluster_endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}

type shards__nodes__endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}

type shards__nodes = {
  availability_zone : string prop;  (** availability_zone *)
  create_time : string prop;  (** create_time *)
  endpoint : shards__nodes__endpoint list;  (** endpoint *)
  name : string prop;  (** name *)
}

type shards = {
  name : string prop;  (** name *)
  nodes : shards__nodes list;  (** nodes *)
  num_nodes : float prop;  (** num_nodes *)
  slots : string prop;  (** slots *)
}

type aws_memorydb_cluster

val aws_memorydb_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_memorydb_cluster

val yojson_of_aws_memorydb_cluster : aws_memorydb_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  acl_name : string prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  cluster_endpoint : cluster_endpoint list prop;
  data_tiering : bool prop;
  description : string prop;
  engine_patch_version : string prop;
  engine_version : string prop;
  final_snapshot_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  maintenance_window : string prop;
  name : string prop;
  node_type : string prop;
  num_replicas_per_shard : float prop;
  num_shards : float prop;
  parameter_group_name : string prop;
  port : float prop;
  security_group_ids : string list prop;
  shards : shards list prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  sns_topic_arn : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tls_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
