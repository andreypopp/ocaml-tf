(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iot_policy_attachment

val aws_iot_policy_attachment :
  ?id:string prop ->
  policy:string prop ->
  target:string prop ->
  unit ->
  aws_iot_policy_attachment

val yojson_of_aws_iot_policy_attachment :
  aws_iot_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  policy : string prop;
  target : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy:string prop ->
  target:string prop ->
  string ->
  t
