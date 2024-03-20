(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_servicequotas_service

val aws_servicequotas_service :
  ?id:string prop ->
  service_name:string prop ->
  unit ->
  aws_servicequotas_service

val yojson_of_aws_servicequotas_service :
  aws_servicequotas_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  service_code : string prop;
  service_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  service_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  service_name:string prop ->
  string ->
  t Tf_core.resource
