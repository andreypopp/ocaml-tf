(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit
