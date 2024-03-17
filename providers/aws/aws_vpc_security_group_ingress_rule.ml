(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_security_group_ingress_rule = {
  cidr_ipv4 : string prop option; [@option]  (** cidr_ipv4 *)
  cidr_ipv6 : string prop option; [@option]  (** cidr_ipv6 *)
  description : string prop option; [@option]  (** description *)
  from_port : float prop option; [@option]  (** from_port *)
  ip_protocol : string prop;  (** ip_protocol *)
  prefix_list_id : string prop option; [@option]
      (** prefix_list_id *)
  referenced_security_group_id : string prop option; [@option]
      (** referenced_security_group_id *)
  security_group_id : string prop;  (** security_group_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_vpc_security_group_ingress_rule *)

type t = {
  arn : string prop;
  cidr_ipv4 : string prop;
  cidr_ipv6 : string prop;
  description : string prop;
  from_port : float prop;
  id : string prop;
  ip_protocol : string prop;
  prefix_list_id : string prop;
  referenced_security_group_id : string prop;
  security_group_id : string prop;
  security_group_rule_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  to_port : float prop;
}

let aws_vpc_security_group_ingress_rule ?cidr_ipv4 ?cidr_ipv6
    ?description ?from_port ?prefix_list_id
    ?referenced_security_group_id ?tags ?to_port ~ip_protocol
    ~security_group_id __resource_id =
  let __resource_type = "aws_vpc_security_group_ingress_rule" in
  let __resource =
    ({
       cidr_ipv4;
       cidr_ipv6;
       description;
       from_port;
       ip_protocol;
       prefix_list_id;
       referenced_security_group_id;
       security_group_id;
       tags;
       to_port;
     }
      : aws_vpc_security_group_ingress_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_security_group_ingress_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cidr_ipv4 =
         Prop.computed __resource_type __resource_id "cidr_ipv4";
       cidr_ipv6 =
         Prop.computed __resource_type __resource_id "cidr_ipv6";
       description =
         Prop.computed __resource_type __resource_id "description";
       from_port =
         Prop.computed __resource_type __resource_id "from_port";
       id = Prop.computed __resource_type __resource_id "id";
       ip_protocol =
         Prop.computed __resource_type __resource_id "ip_protocol";
       prefix_list_id =
         Prop.computed __resource_type __resource_id "prefix_list_id";
       referenced_security_group_id =
         Prop.computed __resource_type __resource_id
           "referenced_security_group_id";
       security_group_id =
         Prop.computed __resource_type __resource_id
           "security_group_id";
       security_group_rule_id =
         Prop.computed __resource_type __resource_id
           "security_group_rule_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       to_port =
         Prop.computed __resource_type __resource_id "to_port";
     }
      : t)
  in
  __resource_attributes
