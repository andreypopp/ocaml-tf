(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_network_acl_rule

val aws_network_acl_rule :
  ?cidr_block:string prop ->
  ?egress:bool prop ->
  ?from_port:float prop ->
  ?icmp_code:float prop ->
  ?icmp_type:float prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?to_port:float prop ->
  network_acl_id:string prop ->
  protocol:string prop ->
  rule_action:string prop ->
  rule_number:float prop ->
  unit ->
  aws_network_acl_rule

val yojson_of_aws_network_acl_rule : aws_network_acl_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cidr_block : string prop;
  egress : bool prop;
  from_port : float prop;
  icmp_code : float prop;
  icmp_type : float prop;
  id : string prop;
  ipv6_cidr_block : string prop;
  network_acl_id : string prop;
  protocol : string prop;
  rule_action : string prop;
  rule_number : float prop;
  to_port : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr_block:string prop ->
  ?egress:bool prop ->
  ?from_port:float prop ->
  ?icmp_code:float prop ->
  ?icmp_type:float prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?to_port:float prop ->
  network_acl_id:string prop ->
  protocol:string prop ->
  rule_action:string prop ->
  rule_number:float prop ->
  string ->
  t

val make :
  ?cidr_block:string prop ->
  ?egress:bool prop ->
  ?from_port:float prop ->
  ?icmp_code:float prop ->
  ?icmp_type:float prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?to_port:float prop ->
  network_acl_id:string prop ->
  protocol:string prop ->
  rule_action:string prop ->
  rule_number:float prop ->
  string ->
  t Tf_core.resource
