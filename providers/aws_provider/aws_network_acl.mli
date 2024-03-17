(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_acl__egress = {
  action : string prop;  (** action *)
  cidr_block : string prop;  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop;  (** icmp_code *)
  icmp_type : float prop;  (** icmp_type *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}

type aws_network_acl__ingress = {
  action : string prop;  (** action *)
  cidr_block : string prop;  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop;  (** icmp_code *)
  icmp_type : float prop;  (** icmp_type *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}

type aws_network_acl

val aws_network_acl :
  ?egress:aws_network_acl__egress list ->
  ?id:string prop ->
  ?ingress:aws_network_acl__ingress list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  vpc_id:string prop ->
  string ->
  unit
