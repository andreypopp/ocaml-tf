(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_domain

val aws_lightsail_domain :
  ?id:string prop ->
  domain_name:string prop ->
  unit ->
  aws_lightsail_domain

val yojson_of_aws_lightsail_domain : aws_lightsail_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
