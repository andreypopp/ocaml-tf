(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster_snapshot__timeouts
type aws_neptune_cluster_snapshot

val aws_neptune_cluster_snapshot :
  ?id:string ->
  ?timeouts:aws_neptune_cluster_snapshot__timeouts ->
  db_cluster_identifier:string ->
  db_cluster_snapshot_identifier:string ->
  string ->
  unit
