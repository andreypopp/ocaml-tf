(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_role_alias

val aws_iot_role_alias :
  ?credential_duration:float ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  alias:string ->
  role_arn:string ->
  string ->
  unit
