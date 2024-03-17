(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_acl__egress = {
  action : string;  (** action *)
  cidr_block : string;  (** cidr_block *)
  from_port : float;  (** from_port *)
  icmp_code : float;  (** icmp_code *)
  icmp_type : float;  (** icmp_type *)
  ipv6_cidr_block : string;  (** ipv6_cidr_block *)
  protocol : string;  (** protocol *)
  rule_no : float;  (** rule_no *)
  to_port : float;  (** to_port *)
}
[@@deriving yojson_of]

type aws_network_acl__ingress = {
  action : string;  (** action *)
  cidr_block : string;  (** cidr_block *)
  from_port : float;  (** from_port *)
  icmp_code : float;  (** icmp_code *)
  icmp_type : float;  (** icmp_type *)
  ipv6_cidr_block : string;  (** ipv6_cidr_block *)
  protocol : string;  (** protocol *)
  rule_no : float;  (** rule_no *)
  to_port : float;  (** to_port *)
}
[@@deriving yojson_of]

type aws_network_acl

val aws_network_acl :
  ?tags:(string * string) list -> vpc_id:string -> string -> unit
