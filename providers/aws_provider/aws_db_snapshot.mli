(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_snapshot__timeouts
type aws_db_snapshot

val aws_db_snapshot :
  ?shared_accounts:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_db_snapshot__timeouts ->
  db_instance_identifier:string ->
  db_snapshot_identifier:string ->
  string ->
  unit
