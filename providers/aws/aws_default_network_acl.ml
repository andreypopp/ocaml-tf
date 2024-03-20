(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type egress = {
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
(** egress *)

type ingress = {
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
(** ingress *)

type aws_default_network_acl = {
  default_network_acl_id : string prop;
      (** default_network_acl_id *)
  id : string prop option; [@option]  (** id *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  egress : egress list;
  ingress : ingress list;
}
[@@deriving yojson_of]
(** aws_default_network_acl *)

let egress ?cidr_block ?icmp_code ?icmp_type ?ipv6_cidr_block ~action
    ~from_port ~protocol ~rule_no ~to_port () : egress =
  {
    action;
    cidr_block;
    from_port;
    icmp_code;
    icmp_type;
    ipv6_cidr_block;
    protocol;
    rule_no;
    to_port;
  }

let ingress ?cidr_block ?icmp_code ?icmp_type ?ipv6_cidr_block
    ~action ~from_port ~protocol ~rule_no ~to_port () : ingress =
  {
    action;
    cidr_block;
    from_port;
    icmp_code;
    icmp_type;
    ipv6_cidr_block;
    protocol;
    rule_no;
    to_port;
  }

let aws_default_network_acl ?id ?subnet_ids ?tags ?tags_all
    ~default_network_acl_id ~egress ~ingress () :
    aws_default_network_acl =
  {
    default_network_acl_id;
    id;
    subnet_ids;
    tags;
    tags_all;
    egress;
    ingress;
  }

type t = {
  arn : string prop;
  default_network_acl_id : string prop;
  id : string prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?subnet_ids ?tags ?tags_all ~default_network_acl_id
    ~egress ~ingress __id =
  let __type = "aws_default_network_acl" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_network_acl_id =
         Prop.computed __type __id "default_network_acl_id";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_default_network_acl
        (aws_default_network_acl ?id ?subnet_ids ?tags ?tags_all
           ~default_network_acl_id ~egress ~ingress ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subnet_ids ?tags ?tags_all
    ~default_network_acl_id ~egress ~ingress __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subnet_ids ?tags ?tags_all ~default_network_acl_id
      ~egress ~ingress __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
