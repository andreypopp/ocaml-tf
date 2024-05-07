(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_thing_group_membership

val aws_iot_thing_group_membership :
  ?id:string prop ->
  ?override_dynamic_group:bool prop ->
  thing_group_name:string prop ->
  thing_name:string prop ->
  unit ->
  aws_iot_thing_group_membership

val yojson_of_aws_iot_thing_group_membership :
  aws_iot_thing_group_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  override_dynamic_group : bool prop;
  thing_group_name : string prop;
  thing_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?override_dynamic_group:bool prop ->
  thing_group_name:string prop ->
  thing_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?override_dynamic_group:bool prop ->
  thing_group_name:string prop ->
  thing_name:string prop ->
  string ->
  t Tf_core.resource
