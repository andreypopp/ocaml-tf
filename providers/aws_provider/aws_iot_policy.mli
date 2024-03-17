(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_policy__timeouts
type aws_iot_policy

val aws_iot_policy :
  ?tags:(string * string) list ->
  ?timeouts:aws_iot_policy__timeouts ->
  name:string ->
  policy:string ->
  string ->
  unit
