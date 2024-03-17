(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_cluster_snapshot__timeouts
type aws_db_cluster_snapshot

val aws_db_cluster_snapshot :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_db_cluster_snapshot__timeouts ->
  db_cluster_identifier:string ->
  db_cluster_snapshot_identifier:string ->
  string ->
  unit
