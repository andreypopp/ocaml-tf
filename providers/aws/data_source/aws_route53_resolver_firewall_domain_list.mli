(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_firewall_domain_list

val aws_route53_resolver_firewall_domain_list :
  ?id:string prop ->
  firewall_domain_list_id:string prop ->
  unit ->
  aws_route53_resolver_firewall_domain_list

val yojson_of_aws_route53_resolver_firewall_domain_list :
  aws_route53_resolver_firewall_domain_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  creator_request_id : string prop;
  domain_count : float prop;
  firewall_domain_list_id : string prop;
  id : string prop;
  managed_owner_name : string prop;
  modification_time : string prop;
  name : string prop;
  status : string prop;
  status_message : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  firewall_domain_list_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  firewall_domain_list_id:string prop ->
  string ->
  t Tf_core.resource
