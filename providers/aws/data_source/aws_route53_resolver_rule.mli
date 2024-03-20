(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_rule

val aws_route53_resolver_rule :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?resolver_rule_id:string prop ->
  ?rule_type:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_route53_resolver_rule

val yojson_of_aws_route53_resolver_rule :
  aws_route53_resolver_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  resolver_rule_id : string prop;
  rule_type : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?resolver_rule_id:string prop ->
  ?rule_type:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?resolver_rule_id:string prop ->
  ?rule_type:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
