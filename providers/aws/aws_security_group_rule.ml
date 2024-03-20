(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?cidr_blocks ?description ?id ?ipv6_cidr_blocks
    ?prefix_list_ids ?self ?source_security_group_id ?timeouts
    ~from_port ~protocol ~security_group_id ~to_port ~type_ __id =
  let __type = "aws_security_group_rule" in
  let __attrs =
    ({
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       description = Prop.computed __type __id "description";
       from_port = Prop.computed __type __id "from_port";
       id = Prop.computed __type __id "id";
       ipv6_cidr_blocks =
         Prop.computed __type __id "ipv6_cidr_blocks";
       prefix_list_ids = Prop.computed __type __id "prefix_list_ids";
       protocol = Prop.computed __type __id "protocol";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       security_group_rule_id =
         Prop.computed __type __id "security_group_rule_id";
       self = Prop.computed __type __id "self";
       source_security_group_id =
         Prop.computed __type __id "source_security_group_id";
       to_port = Prop.computed __type __id "to_port";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_security_group_rule
        (aws_security_group_rule ?cidr_blocks ?description ?id
           ?ipv6_cidr_blocks ?prefix_list_ids ?self
           ?source_security_group_id ?timeouts ~from_port ~protocol
           ~security_group_id ~to_port ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_blocks ?description ?id
    ?ipv6_cidr_blocks ?prefix_list_ids ?self
    ?source_security_group_id ?timeouts ~from_port ~protocol
    ~security_group_id ~to_port ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_blocks ?description ?id ?ipv6_cidr_blocks
      ?prefix_list_ids ?self ?source_security_group_id ?timeouts
      ~from_port ~protocol ~security_group_id ~to_port ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
