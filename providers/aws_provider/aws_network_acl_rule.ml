(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_network_acl_rule = {
  cidr_block : string prop option; [@option]  (** cidr_block *)
  egress : bool prop option; [@option]  (** egress *)
  from_port : float prop option; [@option]  (** from_port *)
  icmp_code : float prop option; [@option]  (** icmp_code *)
  icmp_type : float prop option; [@option]  (** icmp_type *)
  id : string prop option; [@option]  (** id *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  network_acl_id : string prop;  (** network_acl_id *)
  protocol : string prop;  (** protocol *)
  rule_action : string prop;  (** rule_action *)
  rule_number : float prop;  (** rule_number *)
  to_port : float prop option; [@option]  (** to_port *)
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
