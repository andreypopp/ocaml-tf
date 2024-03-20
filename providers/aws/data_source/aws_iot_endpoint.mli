(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_endpoint

val aws_iot_endpoint :
  ?endpoint_type:string prop ->
  ?id:string prop ->
  unit ->
  aws_iot_endpoint

val yojson_of_aws_iot_endpoint : aws_iot_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  endpoint_address : string prop;
  endpoint_type : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?endpoint_type:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?endpoint_type:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
