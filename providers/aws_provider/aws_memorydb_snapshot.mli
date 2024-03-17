(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_snapshot__timeouts

type aws_memorydb_snapshot__cluster_configuration = {
  description : string prop;  (** description *)
  engine_version : string prop;  (** engine_version *)
  maintenance_window : string prop;  (** maintenance_window *)
  name : string prop;  (** name *)
  node_type : string prop;  (** node_type *)
  num_shards : float prop;  (** num_shards *)
  parameter_group_name : string prop;  (** parameter_group_name *)
  port : float prop;  (** port *)
  snapshot_retention_limit : float prop;
      (** snapshot_retention_limit *)
  snapshot_window : string prop;  (** snapshot_window *)
  subnet_group_name : string prop;  (** subnet_group_name *)
  topic_arn : string prop;  (** topic_arn *)
  vpc_id : string prop;  (** vpc_id *)
}

type aws_memorydb_snapshot

type t = private {
  arn : string prop;
  cluster_configuration :
    aws_memorydb_snapshot__cluster_configuration list prop;
  cluster_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  name_prefix : string prop;
  source : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_memorydb_snapshot :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_memorydb_snapshot__timeouts ->
  cluster_name:string prop ->
  string ->
  t
