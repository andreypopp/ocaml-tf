(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cluster_configuration = {
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

val aws_memorydb_snapshot :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_memorydb_snapshot

val yojson_of_aws_memorydb_snapshot : aws_memorydb_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cluster_configuration : cluster_configuration list prop;
  cluster_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  source : string prop;
  tags : (string * string) list prop;
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
