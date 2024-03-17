(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_parameter_group__parameter
type aws_db_parameter_group

val aws_db_parameter_group :
  ?description:string ->
  ?tags:(string * string) list ->
  family:string ->
  parameter:aws_db_parameter_group__parameter list ->
  string ->
  unit
