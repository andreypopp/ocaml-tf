(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_cluster__timeouts

type aws_memorydb_cluster__cluster_endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}

type aws_memorydb_cluster__shards__nodes__endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}

type aws_memorydb_cluster__shards__nodes = {
  availability_zone : string prop;  (** availability_zone *)
  create_time : string prop;  (** create_time *)
  endpoint : aws_memorydb_cluster__shards__nodes__endpoint list;
      (** endpoint *)
  name : string prop;  (** name *)
}

type aws_memorydb_cluster__shards = {
  name : string prop;  (** name *)
  nodes : aws_memorydb_cluster__shards__nodes list;  (** nodes *)
  num_nodes : float prop;  (** num_nodes *)
  slots : string prop;  (** slots *)
}

type aws_memorydb_cluster

type t = private {
  acl_name : string prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  cluster_endpoint :
    aws_memorydb_cluster__cluster_endpoint list prop;
  data_tiering : bool prop;
  description : string prop;
  engine_patch_version : string prop;
  engine_version : string prop;
  final_snapshot_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  maintenance_window : string prop;
  name : string prop;
  name_prefix : string prop;
  node_type : string prop;
  num_replicas_per_shard : float prop;
  num_shards : float prop;
  parameter_group_name : string prop;
  port : float prop;
  security_group_ids : string list prop;
  shards : aws_memorydb_cluster__shards list prop;
  snapshot_arns : string list prop;
  snapshot_name : string prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  sns_topic_arn : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tls_enabled : bool prop;
}

val aws_memorydb_cluster :
  ?auto_minor_version_upgrade:bool prop ->
  ?data_tiering:bool prop ->
  ?description:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_name:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?maintenance_window:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?num_replicas_per_shard:float prop ->
  ?num_shards:float prop ->
  ?parameter_group_name:string prop ->
  ?port:float prop ->
  ?security_group_ids:string prop list ->
  ?snapshot_arns:string prop list ->
  ?snapshot_name:string prop ->
  ?snapshot_retention_limit:float prop ->
  ?snapshot_window:string prop ->
  ?sns_topic_arn:string prop ->
  ?subnet_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tls_enabled:bool prop ->
  ?timeouts:aws_memorydb_cluster__timeouts ->
  acl_name:string prop ->
  node_type:string prop ->
  string ->
  t
