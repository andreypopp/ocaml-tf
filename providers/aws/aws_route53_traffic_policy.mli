(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_traffic_policy

val aws_route53_traffic_policy :
  ?comment:string prop ->
  ?id:string prop ->
  document:string prop ->
  name:string prop ->
  unit ->
  aws_route53_traffic_policy

val yojson_of_aws_route53_traffic_policy :
  aws_route53_traffic_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  comment : string prop;
  document : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  document:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?id:string prop ->
  document:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
