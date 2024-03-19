(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_security_group_rule = {
  cidr_blocks : string prop list option; [@option]
      (** cidr_blocks *)
  description : string prop option; [@option]  (** description *)
  from_port : float prop;  (** from_port *)
  id : string prop option; [@option]  (** id *)
  ipv6_cidr_blocks : string prop list option; [@option]
      (** ipv6_cidr_blocks *)
  prefix_list_ids : string prop list option; [@option]
      (** prefix_list_ids *)
  protocol : string prop;  (** protocol *)
  security_group_id : string prop;  (** security_group_id *)
  self : bool prop option; [@option]  (** self *)
  source_security_group_id : string prop option; [@option]
      (** source_security_group_id *)
  to_port : float prop;  (** to_port *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_security_group_rule *)

let timeouts ?create () : timeouts = { create }

let aws_security_group_rule ?cidr_blocks ?description ?id
    ?ipv6_cidr_blocks ?prefix_list_ids ?self
    ?source_security_group_id ?timeouts ~from_port ~protocol
    ~security_group_id ~to_port ~type_ () : aws_security_group_rule =
  {
    cidr_blocks;
    description;
    from_port;
    id;
    ipv6_cidr_blocks;
    prefix_list_ids;
    protocol;
    security_group_id;
    self;
    source_security_group_id;
    to_port;
    type_;
    timeouts;
  }

type t = {
  cidr_blocks : string list prop;
  description : string prop;
  from_port : float prop;
  id : string prop;
  ipv6_cidr_blocks : string list prop;
  prefix_list_ids : string list prop;
  protocol : string prop;
  security_group_id : string prop;
  security_group_rule_id : string prop;
  self : bool prop;
  source_security_group_id : string prop;
  to_port : float prop;
  type_ : string prop;
}

let register ?tf_module ?cidr_blocks ?description ?id
    ?ipv6_cidr_blocks ?prefix_list_ids ?self
    ?source_security_group_id ?timeouts ~from_port ~protocol
    ~security_group_id ~to_port ~type_ __resource_id =
  let __resource_type = "aws_security_group_rule" in
  let __resource =
    aws_security_group_rule ?cidr_blocks ?description ?id
      ?ipv6_cidr_blocks ?prefix_list_ids ?self
      ?source_security_group_id ?timeouts ~from_port ~protocol
      ~security_group_id ~to_port ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_security_group_rule __resource);
  let __resource_attributes =
    ({
       cidr_blocks =
         Prop.computed __resource_type __resource_id "cidr_blocks";
       description =
         Prop.computed __resource_type __resource_id "description";
       from_port =
         Prop.computed __resource_type __resource_id "from_port";
       id = Prop.computed __resource_type __resource_id "id";
       ipv6_cidr_blocks =
         Prop.computed __resource_type __resource_id
           "ipv6_cidr_blocks";
       prefix_list_ids =
         Prop.computed __resource_type __resource_id
           "prefix_list_ids";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       security_group_id =
         Prop.computed __resource_type __resource_id
           "security_group_id";
       security_group_rule_id =
         Prop.computed __resource_type __resource_id
           "security_group_rule_id";
       self = Prop.computed __resource_type __resource_id "self";
       source_security_group_id =
         Prop.computed __resource_type __resource_id
           "source_security_group_id";
       to_port =
         Prop.computed __resource_type __resource_id "to_port";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
