(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_cluster_snapshot

val aws_redshift_cluster_snapshot :
  ?id:string prop ->
  ?manual_snapshot_retention_period:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cluster_identifier:string prop ->
  snapshot_identifier:string prop ->
  string ->
  unit
