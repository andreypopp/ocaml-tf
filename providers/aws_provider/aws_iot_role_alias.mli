(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_role_alias

val aws_iot_role_alias :
  ?credential_duration:float ->
  ?tags:(string * string) list ->
  alias:string ->
  role_arn:string ->
  string ->
  unit
