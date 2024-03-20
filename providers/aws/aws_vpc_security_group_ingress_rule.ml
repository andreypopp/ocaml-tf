(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_vpc_security_group_ingress_rule ?cidr_ipv4 ?cidr_ipv6
    ?description ?from_port ?prefix_list_id
    ?referenced_security_group_id ?tags ?to_port ~ip_protocol
    ~security_group_id () : aws_vpc_security_group_ingress_rule =
  {
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

let make ?cidr_ipv4 ?cidr_ipv6 ?description ?from_port
    ?prefix_list_id ?referenced_security_group_id ?tags ?to_port
    ~ip_protocol ~security_group_id __id =
  let __type = "aws_vpc_security_group_ingress_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cidr_ipv4 = Prop.computed __type __id "cidr_ipv4";
       cidr_ipv6 = Prop.computed __type __id "cidr_ipv6";
       description = Prop.computed __type __id "description";
       from_port = Prop.computed __type __id "from_port";
       id = Prop.computed __type __id "id";
       ip_protocol = Prop.computed __type __id "ip_protocol";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
       referenced_security_group_id =
         Prop.computed __type __id "referenced_security_group_id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       security_group_rule_id =
         Prop.computed __type __id "security_group_rule_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       to_port = Prop.computed __type __id "to_port";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_security_group_ingress_rule
        (aws_vpc_security_group_ingress_rule ?cidr_ipv4 ?cidr_ipv6
           ?description ?from_port ?prefix_list_id
           ?referenced_security_group_id ?tags ?to_port ~ip_protocol
           ~security_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_ipv4 ?cidr_ipv6 ?description ?from_port
    ?prefix_list_id ?referenced_security_group_id ?tags ?to_port
    ~ip_protocol ~security_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_ipv4 ?cidr_ipv6 ?description ?from_port
      ?prefix_list_id ?referenced_security_group_id ?tags ?to_port
      ~ip_protocol ~security_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
