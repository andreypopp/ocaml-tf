(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_snapshot_schedule

val aws_redshift_snapshot_schedule :
  ?description:string ->
  ?force_destroy:bool ->
  ?id:string ->
  ?identifier:string ->
  ?identifier_prefix:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  definitions:string list ->
  string ->
  unit
