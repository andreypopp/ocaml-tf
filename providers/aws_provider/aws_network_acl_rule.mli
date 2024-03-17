(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_acl_rule

val aws_network_acl_rule :
  ?cidr_block:string ->
  ?egress:bool ->
  ?from_port:float ->
  ?icmp_code:float ->
  ?icmp_type:float ->
  ?id:string ->
  ?ipv6_cidr_block:string ->
  ?to_port:float ->
  network_acl_id:string ->
  protocol:string ->
  rule_action:string ->
  rule_number:float ->
  string ->
  unit
