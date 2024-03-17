(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_policy_attachment

type t = private {
  id : string prop;
  policy : string prop;
  target : string prop;
}

val aws_iot_policy_attachment :
  ?id:string prop ->
  policy:string prop ->
  target:string prop ->
  string ->
  t
