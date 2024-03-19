(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_route53_delegation_set

val aws_route53_delegation_set :
  ?id:string prop ->
  ?reference_name:string prop ->
  unit ->
  aws_route53_delegation_set

val yojson_of_aws_route53_delegation_set :
  aws_route53_delegation_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name_servers : string list prop;
  reference_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?reference_name:string prop ->
  string ->
  t
