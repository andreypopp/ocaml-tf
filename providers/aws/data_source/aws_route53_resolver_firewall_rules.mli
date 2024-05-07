(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type firewall_rules = {
  action : string prop;  (** action *)
  block_override_dns_type : string prop;
      (** block_override_dns_type *)
  block_override_domain : string prop;  (** block_override_domain *)
  block_override_ttl : float prop;  (** block_override_ttl *)
  block_response : string prop;  (** block_response *)
  creation_time : string prop;  (** creation_time *)
  creator_request_id : string prop;  (** creator_request_id *)
  firewall_domain_list_id : string prop;
      (** firewall_domain_list_id *)
  firewall_rule_group_id : string prop;
      (** firewall_rule_group_id *)
  modification_time : string prop;  (** modification_time *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
}

type aws_route53_resolver_firewall_rules

val aws_route53_resolver_firewall_rules :
  ?action:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  firewall_rule_group_id:string prop ->
  unit ->
  aws_route53_resolver_firewall_rules

val yojson_of_aws_route53_resolver_firewall_rules :
  aws_route53_resolver_firewall_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  firewall_rule_group_id : string prop;
  firewall_rules : firewall_rules list prop;
  id : string prop;
  priority : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?action:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  firewall_rule_group_id:string prop ->
  string ->
  t

val make :
  ?action:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  firewall_rule_group_id:string prop ->
  string ->
  t Tf_core.resource
