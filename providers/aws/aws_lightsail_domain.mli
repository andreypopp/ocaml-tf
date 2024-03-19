(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
