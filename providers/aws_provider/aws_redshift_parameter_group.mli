(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_parameter_group__parameter
type aws_redshift_parameter_group

val aws_redshift_parameter_group :
  ?description:string ->
  ?tags:(string * string) list ->
  family:string ->
  name:string ->
  parameter:aws_redshift_parameter_group__parameter list ->
  string ->
  unit
