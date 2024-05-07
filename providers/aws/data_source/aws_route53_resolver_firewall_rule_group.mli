(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_firewall_rule_group

val aws_route53_resolver_firewall_rule_group :
  ?id:string prop ->
  firewall_rule_group_id:string prop ->
  unit ->
  aws_route53_resolver_firewall_rule_group

val yojson_of_aws_route53_resolver_firewall_rule_group :
  aws_route53_resolver_firewall_rule_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  creator_request_id : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  modification_time : string prop;
  name : string prop;
  owner_id : string prop;
  rule_count : float prop;
  share_status : string prop;
  status : string prop;
  status_message : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  firewall_rule_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  firewall_rule_group_id:string prop ->
  string ->
  t Tf_core.resource
