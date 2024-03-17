(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdb_cluster_snapshot__timeouts
type aws_docdb_cluster_snapshot

type t = private {
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

val aws_docdb_cluster_snapshot :
  ?id:string prop ->
  ?timeouts:aws_docdb_cluster_snapshot__timeouts ->
  db_cluster_identifier:string prop ->
  db_cluster_snapshot_identifier:string prop ->
  string ->
  t
