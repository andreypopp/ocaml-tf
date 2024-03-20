(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type egress = {
  action : string prop;  (** action *)
  cidr_block : string prop;  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop;  (** icmp_code *)
  icmp_type : float prop;  (** icmp_type *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]

type ingress = {
  action : string prop;  (** action *)
  cidr_block : string prop;  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop;  (** icmp_code *)
  icmp_type : float prop;  (** icmp_type *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]

type aws_network_acl = {
  egress : egress list option; [@option]  (** egress *)
  id : string prop option; [@option]  (** id *)
  ingress : ingress list option; [@option]  (** ingress *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_network_acl *)

let aws_network_acl ?egress ?id ?ingress ?subnet_ids ?tags ?tags_all
    ~vpc_id () : aws_network_acl =
  { egress; id; ingress; subnet_ids; tags; tags_all; vpc_id }

type t = {
  arn : string prop;
  egress : egress list prop;
  id : string prop;
  ingress : ingress list prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?egress ?id ?ingress ?subnet_ids ?tags ?tags_all ~vpc_id
    __id =
  let __type = "aws_network_acl" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       egress = Prop.computed __type __id "egress";
       id = Prop.computed __type __id "id";
       ingress = Prop.computed __type __id "ingress";
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
      yojson_of_aws_network_acl
        (aws_network_acl ?egress ?id ?ingress ?subnet_ids ?tags
           ?tags_all ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?egress ?id ?ingress ?subnet_ids ?tags
    ?tags_all ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?egress ?id ?ingress ?subnet_ids ?tags ?tags_all ~vpc_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
