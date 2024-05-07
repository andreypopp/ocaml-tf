(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_zone_association

val aws_route53_zone_association :
  ?id:string prop ->
  ?vpc_region:string prop ->
  vpc_id:string prop ->
  zone_id:string prop ->
  unit ->
  aws_route53_zone_association

val yojson_of_aws_route53_zone_association :
  aws_route53_zone_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  owning_account : string prop;
  vpc_id : string prop;
  vpc_region : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?vpc_region:string prop ->
  vpc_id:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?vpc_region:string prop ->
  vpc_id:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
