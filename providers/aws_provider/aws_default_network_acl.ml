(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_network_acl__egress = {
  action : string;  (** action *)
  cidr_block : string option; [@option]  (** cidr_block *)
  from_port : float;  (** from_port *)
  icmp_code : float option; [@option]  (** icmp_code *)
  icmp_type : float option; [@option]  (** icmp_type *)
  ipv6_cidr_block : string option; [@option]  (** ipv6_cidr_block *)
  protocol : string;  (** protocol *)
  rule_no : float;  (** rule_no *)
  to_port : float;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_default_network_acl__egress *)

type aws_default_network_acl__ingress = {
  action : string;  (** action *)
  cidr_block : string option; [@option]  (** cidr_block *)
  from_port : float;  (** from_port *)
  icmp_code : float option; [@option]  (** icmp_code *)
  icmp_type : float option; [@option]  (** icmp_type *)
  ipv6_cidr_block : string option; [@option]  (** ipv6_cidr_block *)
  protocol : string;  (** protocol *)
  rule_no : float;  (** rule_no *)
  to_port : float;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_default_network_acl__ingress *)

type aws_default_network_acl = {
  default_network_acl_id : string;  (** default_network_acl_id *)
  id : string option; [@option]  (** id *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  egress : aws_default_network_acl__egress list;
  ingress : aws_default_network_acl__ingress list;
}
[@@deriving yojson_of]
(** aws_default_network_acl *)

let aws_default_network_acl ?id ?subnet_ids ?tags ?tags_all
    ~default_network_acl_id ~egress ~ingress __resource_id =
  let __resource_type = "aws_default_network_acl" in
  let __resource =
    {
      default_network_acl_id;
      id;
      subnet_ids;
      tags;
      tags_all;
      egress;
      ingress;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_network_acl __resource);
  ()
