(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_subnet_group

val aws_redshift_subnet_group :
  ?description:string ->
  ?tags:(string * string) list ->
  name:string ->
  subnet_ids:string list ->
  string ->
  unit
