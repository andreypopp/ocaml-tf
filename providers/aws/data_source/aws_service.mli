(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_service

val aws_service :
  ?dns_name:string prop ->
  ?id:string prop ->
  ?region:string prop ->
  ?reverse_dns_name:string prop ->
  ?reverse_dns_prefix:string prop ->
  ?service_id:string prop ->
  unit ->
  aws_service

val yojson_of_aws_service : aws_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_name : string prop;
  id : string prop;
  partition : string prop;
  region : string prop;
  reverse_dns_name : string prop;
  reverse_dns_prefix : string prop;
  service_id : string prop;
  supported : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?dns_name:string prop ->
  ?id:string prop ->
  ?region:string prop ->
  ?reverse_dns_name:string prop ->
  ?reverse_dns_prefix:string prop ->
  ?service_id:string prop ->
  string ->
  t

val make :
  ?dns_name:string prop ->
  ?id:string prop ->
  ?region:string prop ->
  ?reverse_dns_name:string prop ->
  ?reverse_dns_prefix:string prop ->
  ?service_id:string prop ->
  string ->
  t Tf_core.resource
