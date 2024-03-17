(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_thing_group_membership

type t = private {
  id : string prop;
  override_dynamic_group : bool prop;
  thing_group_name : string prop;
  thing_name : string prop;
}

val aws_iot_thing_group_membership :
  ?id:string prop ->
  ?override_dynamic_group:bool prop ->
  thing_group_name:string prop ->
  thing_name:string prop ->
  string ->
  t
