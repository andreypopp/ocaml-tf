(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_subnet_group

val aws_db_subnet_group :
  ?description:string ->
  ?tags:(string * string) list ->
  subnet_ids:string list ->
  string ->
  unit
