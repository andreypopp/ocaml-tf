(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster_snapshot__timeouts
type aws_neptune_cluster_snapshot

val aws_neptune_cluster_snapshot :
  ?id:string prop ->
  ?timeouts:aws_neptune_cluster_snapshot__timeouts ->
  db_cluster_identifier:string prop ->
  db_cluster_snapshot_identifier:string prop ->
  string ->
  unit
