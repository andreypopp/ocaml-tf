(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_options

val vpc_options :
  ?security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc_options

type aws_opensearch_vpc_endpoint

val aws_opensearch_vpc_endpoint :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_arn:string prop ->
  vpc_options:vpc_options list ->
  unit ->
  aws_opensearch_vpc_endpoint

val yojson_of_aws_opensearch_vpc_endpoint :
  aws_opensearch_vpc_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  domain_arn : string prop;
  endpoint : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_arn:string prop ->
  vpc_options:vpc_options list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_arn:string prop ->
  vpc_options:vpc_options list ->
  string ->
  t Tf_core.resource
