(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_snapshot_schedule

val aws_redshift_snapshot_schedule :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  definitions:string prop list ->
  string ->
  unit
