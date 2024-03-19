(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iot_thing_principal_attachment

val aws_iot_thing_principal_attachment :
  ?id:string prop ->
  principal:string prop ->
  thing:string prop ->
  unit ->
  aws_iot_thing_principal_attachment

val yojson_of_aws_iot_thing_principal_attachment :
  aws_iot_thing_principal_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  principal : string prop;
  thing : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  principal:string prop ->
  thing:string prop ->
  string ->
  t
