(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_parameter

val aws_ssm_parameter :
  ?allowed_pattern:string ->
  ?description:string ->
  ?overwrite:bool ->
  ?tags:(string * string) list ->
  name:string ->
  type_:string ->
  string ->
  unit
