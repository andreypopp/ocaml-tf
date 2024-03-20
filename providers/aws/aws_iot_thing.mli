(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_thing

val aws_iot_thing :
  ?attributes:(string * string prop) list ->
  ?id:string prop ->
  ?thing_type_name:string prop ->
  name:string prop ->
  unit ->
  aws_iot_thing

val yojson_of_aws_iot_thing : aws_iot_thing -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  attributes : (string * string) list prop;
  default_client_id : string prop;
  id : string prop;
  name : string prop;
  thing_type_name : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?attributes:(string * string prop) list ->
  ?id:string prop ->
  ?thing_type_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?attributes:(string * string prop) list ->
  ?id:string prop ->
  ?thing_type_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
