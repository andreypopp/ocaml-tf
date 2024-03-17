(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_network_acl__egress = {
  action : string prop;  (** action *)
  cidr_block : string prop option; [@option]  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop option; [@option]  (** icmp_code *)
  icmp_type : float prop option; [@option]  (** icmp_type *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_default_network_acl__egress *)

type aws_default_network_acl__ingress = {
  action : string prop;  (** action *)
  cidr_block : string prop option; [@option]  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop option; [@option]  (** icmp_code *)
  icmp_type : float prop option; [@option]  (** icmp_type *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_default_network_acl__ingress *)

type aws_default_network_acl = {
  default_network_acl_id : string prop;
      (** default_network_acl_id *)
  id : string prop option; [@option]  (** id *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
