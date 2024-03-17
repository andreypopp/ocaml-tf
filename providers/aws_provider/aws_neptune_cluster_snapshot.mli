(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster_snapshot__timeouts
type aws_neptune_cluster_snapshot

type t = private {
  allocated_storage : float prop;
  availability_zones : string list prop;
  db_cluster_identifier : string prop;
  db_cluster_snapshot_arn : string prop;
  db_cluster_snapshot_identifier : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  license_model : string prop;
  port : float prop;
  snapshot_type : string prop;
  source_db_cluster_snapshot_arn : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  vpc_id : string prop;
}

val aws_neptune_cluster_snapshot :
  ?id:string prop ->
  ?timeouts:aws_neptune_cluster_snapshot__timeouts ->
  db_cluster_identifier:string prop ->
  db_cluster_snapshot_identifier:string prop ->
  string ->
  t
