(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdb_cluster_snapshot__timeouts
type aws_docdb_cluster_snapshot

val aws_docdb_cluster_snapshot :
  ?id:string ->
  ?timeouts:aws_docdb_cluster_snapshot__timeouts ->
  db_cluster_identifier:string ->
  db_cluster_snapshot_identifier:string ->
  string ->
  unit
