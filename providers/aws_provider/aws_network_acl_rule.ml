(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_network_acl_rule = {
  cidr_block : string option; [@option]  (** cidr_block *)
  egress : bool option; [@option]  (** egress *)
  from_port : float option; [@option]  (** from_port *)
  icmp_code : float option; [@option]  (** icmp_code *)
  icmp_type : float option; [@option]  (** icmp_type *)
  id : string option; [@option]  (** id *)
  ipv6_cidr_block : string option; [@option]  (** ipv6_cidr_block *)
  network_acl_id : string;  (** network_acl_id *)
  protocol : string;  (** protocol *)
  rule_action : string;  (** rule_action *)
  rule_number : float;  (** rule_number *)
  to_port : float option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_network_acl_rule *)

let aws_network_acl_rule ?cidr_block ?egress ?from_port ?icmp_code
    ?icmp_type ?id ?ipv6_cidr_block ?to_port ~network_acl_id
    ~protocol ~rule_action ~rule_number __resource_id =
  let __resource_type = "aws_network_acl_rule" in
  let __resource =
    {
      cidr_block;
      egress;
      from_port;
      icmp_code;
      icmp_type;
      id;
      ipv6_cidr_block;
      network_acl_id;
      protocol;
      rule_action;
      rule_number;
      to_port;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_acl_rule __resource);
  ()
