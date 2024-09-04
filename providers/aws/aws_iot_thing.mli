(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_thing

val aws_iot_thing :
  ?attributes:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?thing_type_name:string prop ->
  name:string prop ->
  unit ->
  aws_iot_thing

val yojson_of_aws_iot_thing : aws_iot_thing -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  attributes : string Tf_core.assoc prop;
  default_client_id : string prop;
  id : string prop;
  name : string prop;
  thing_type_name : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?attributes:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?thing_type_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?attributes:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?thing_type_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
