(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_policy__timeouts
type aws_iot_policy

val aws_iot_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_iot_policy__timeouts ->
  name:string prop ->
  policy:string prop ->
  string ->
  unit
