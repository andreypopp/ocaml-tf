(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_snapshot__timeouts
type aws_db_snapshot

val aws_db_snapshot :
  ?id:string prop ->
  ?shared_accounts:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_db_snapshot__timeouts ->
  db_instance_identifier:string prop ->
  db_snapshot_identifier:string prop ->
  string ->
  unit
