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
    ~protocol ~rule_action ~rule_number () : aws_network_acl_rule =
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

type t = {
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

let register ?tf_module ?cidr_block ?egress ?from_port ?icmp_code
    ?icmp_type ?id ?ipv6_cidr_block ?to_port ~network_acl_id
    ~protocol ~rule_action ~rule_number __resource_id =
  let __resource_type = "aws_network_acl_rule" in
  let __resource =
    aws_network_acl_rule ?cidr_block ?egress ?from_port ?icmp_code
      ?icmp_type ?id ?ipv6_cidr_block ?to_port ~network_acl_id
      ~protocol ~rule_action ~rule_number ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_acl_rule __resource);
  let __resource_attributes =
    ({
       cidr_block =
         Prop.computed __resource_type __resource_id "cidr_block";
       egress = Prop.computed __resource_type __resource_id "egress";
       from_port =
         Prop.computed __resource_type __resource_id "from_port";
       icmp_code =
         Prop.computed __resource_type __resource_id "icmp_code";
       icmp_type =
         Prop.computed __resource_type __resource_id "icmp_type";
       id = Prop.computed __resource_type __resource_id "id";
       ipv6_cidr_block =
         Prop.computed __resource_type __resource_id
           "ipv6_cidr_block";
       network_acl_id =
         Prop.computed __resource_type __resource_id "network_acl_id";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       rule_action =
         Prop.computed __resource_type __resource_id "rule_action";
       rule_number =
         Prop.computed __resource_type __resource_id "rule_number";
       to_port =
         Prop.computed __resource_type __resource_id "to_port";
     }
      : t)
  in
  __resource_attributes
