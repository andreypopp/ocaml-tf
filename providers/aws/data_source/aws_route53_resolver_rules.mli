(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_rules

val aws_route53_resolver_rules :
  ?id:string prop ->
  ?name_regex:string prop ->
  ?owner_id:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?rule_type:string prop ->
  ?share_status:string prop ->
  unit ->
  aws_route53_resolver_rules

val yojson_of_aws_route53_resolver_rules :
  aws_route53_resolver_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name_regex : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  resolver_rule_ids : string list prop;
  rule_type : string prop;
  share_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name_regex:string prop ->
  ?owner_id:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?rule_type:string prop ->
  ?share_status:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name_regex:string prop ->
  ?owner_id:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?rule_type:string prop ->
  ?share_status:string prop ->
  string ->
  t Tf_core.resource
