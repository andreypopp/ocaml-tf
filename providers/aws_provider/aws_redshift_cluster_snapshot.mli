(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_cluster_snapshot

val aws_redshift_cluster_snapshot :
  ?id:string ->
  ?manual_snapshot_retention_period:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  cluster_identifier:string ->
  snapshot_identifier:string ->
  string ->
  unit
