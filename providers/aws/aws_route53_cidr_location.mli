(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_route53_cidr_location

val aws_route53_cidr_location :
  cidr_blocks:string prop list ->
  cidr_collection_id:string prop ->
  name:string prop ->
  unit ->
  aws_route53_cidr_location

val yojson_of_aws_route53_cidr_location :
  aws_route53_cidr_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cidr_blocks : string list prop;
  cidr_collection_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  cidr_blocks:string prop list ->
  cidr_collection_id:string prop ->
  name:string prop ->
  string ->
  t
