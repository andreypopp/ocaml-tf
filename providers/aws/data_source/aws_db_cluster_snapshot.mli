(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_db_cluster_snapshot

val aws_db_cluster_snapshot :
  ?db_cluster_identifier:string prop ->
  ?db_cluster_snapshot_identifier:string prop ->
  ?id:string prop ->
  ?include_public:bool prop ->
  ?include_shared:bool prop ->
  ?most_recent:bool prop ->
  ?snapshot_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  unit ->
  aws_db_cluster_snapshot

val yojson_of_aws_db_cluster_snapshot :
  aws_db_cluster_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocated_storage : float prop;
  availability_zones : string list prop;
  db_cluster_identifier : string prop;
  db_cluster_snapshot_arn : string prop;
  db_cluster_snapshot_identifier : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  include_public : bool prop;
  include_shared : bool prop;
  kms_key_id : string prop;
  license_model : string prop;
  most_recent : bool prop;
  port : float prop;
  snapshot_create_time : string prop;
  snapshot_type : string prop;
  source_db_cluster_snapshot_arn : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  tags : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?db_cluster_identifier:string prop ->
  ?db_cluster_snapshot_identifier:string prop ->
  ?id:string prop ->
  ?include_public:bool prop ->
  ?include_shared:bool prop ->
  ?most_recent:bool prop ->
  ?snapshot_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?db_cluster_identifier:string prop ->
  ?db_cluster_snapshot_identifier:string prop ->
  ?id:string prop ->
  ?include_public:bool prop ->
  ?include_shared:bool prop ->
  ?most_recent:bool prop ->
  ?snapshot_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
