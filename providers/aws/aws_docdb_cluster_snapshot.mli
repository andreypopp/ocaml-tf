(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_docdb_cluster_snapshot

val aws_docdb_cluster_snapshot :
  ?id:string prop ->
  ?timeouts:timeouts ->
  db_cluster_identifier:string prop ->
  db_cluster_snapshot_identifier:string prop ->
  unit ->
  aws_docdb_cluster_snapshot

val yojson_of_aws_docdb_cluster_snapshot :
  aws_docdb_cluster_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  availability_zones : string list prop;
  db_cluster_identifier : string prop;
  db_cluster_snapshot_arn : string prop;
  db_cluster_snapshot_identifier : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  port : float prop;
  snapshot_type : string prop;
  source_db_cluster_snapshot_arn : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  db_cluster_identifier:string prop ->
  db_cluster_snapshot_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  db_cluster_identifier:string prop ->
  db_cluster_snapshot_identifier:string prop ->
  string ->
  t Tf_core.resource
