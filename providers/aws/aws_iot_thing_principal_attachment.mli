(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_thing_principal_attachment

type t = private {
  id : string prop;
  principal : string prop;
  thing : string prop;
}

val aws_iot_thing_principal_attachment :
  ?id:string prop ->
  principal:string prop ->
  thing:string prop ->
  string ->
  t
