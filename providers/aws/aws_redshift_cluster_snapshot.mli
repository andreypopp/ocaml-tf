(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_cluster_snapshot

type t = private {
  arn : string prop;
  cluster_identifier : string prop;
  id : string prop;
  kms_key_id : string prop;
  manual_snapshot_retention_period : float prop;
  owner_account : string prop;
  snapshot_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_redshift_cluster_snapshot :
  ?id:string prop ->
  ?manual_snapshot_retention_period:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cluster_identifier:string prop ->
  snapshot_identifier:string prop ->
  string ->
  t
