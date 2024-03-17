(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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

type aws_network_acl = {
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_network_acl *)

let aws_network_acl ?tags ~vpc_id __resource_id =
  let __resource_type = "aws_network_acl" in
  let __resource = { tags; vpc_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_acl __resource);
  ()
