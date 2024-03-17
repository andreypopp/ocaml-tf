(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_role_alias

val aws_iot_role_alias :
  ?credential_duration:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  alias:string prop ->
  role_arn:string prop ->
  string ->
  unit
