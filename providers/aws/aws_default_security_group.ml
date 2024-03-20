(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type egress = {
  cidr_blocks : string prop list;  (** cidr_blocks *)
  description : string prop;  (** description *)
  from_port : float prop;  (** from_port *)
  ipv6_cidr_blocks : string prop list;  (** ipv6_cidr_blocks *)
  prefix_list_ids : string prop list;  (** prefix_list_ids *)
  protocol : string prop;  (** protocol *)
  security_groups : string prop list;  (** security_groups *)
  self : bool prop;  (** self *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]

type ingress = {
  cidr_blocks : string prop list;  (** cidr_blocks *)
  description : string prop;  (** description *)
  from_port : float prop;  (** from_port *)
  ipv6_cidr_blocks : string prop list;  (** ipv6_cidr_blocks *)
  prefix_list_ids : string prop list;  (** prefix_list_ids *)
  protocol : string prop;  (** protocol *)
  security_groups : string prop list;  (** security_groups *)
  self : bool prop;  (** self *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]

type aws_default_security_group = {
  egress : egress list option; [@option]  (** egress *)
  id : string prop option; [@option]  (** id *)
  ingress : ingress list option; [@option]  (** ingress *)
  revoke_rules_on_delete : bool prop option; [@option]
      (** revoke_rules_on_delete *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_default_security_group *)

let aws_default_security_group ?egress ?id ?ingress
    ?revoke_rules_on_delete ?tags ?tags_all ?vpc_id () :
    aws_default_security_group =
  {
    egress;
    id;
    ingress;
    revoke_rules_on_delete;
    tags;
    tags_all;
    vpc_id;
  }

type t = {
  arn : string prop;
  description : string prop;
  egress : egress list prop;
  id : string prop;
  ingress : ingress list prop;
  name : string prop;
  name_prefix : string prop;
  owner_id : string prop;
  revoke_rules_on_delete : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?egress ?id ?ingress ?revoke_rules_on_delete ?tags ?tags_all
    ?vpc_id __id =
  let __type = "aws_default_security_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       egress = Prop.computed __type __id "egress";
       id = Prop.computed __type __id "id";
       ingress = Prop.computed __type __id "ingress";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       owner_id = Prop.computed __type __id "owner_id";
       revoke_rules_on_delete =
         Prop.computed __type __id "revoke_rules_on_delete";
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
      yojson_of_aws_default_security_group
        (aws_default_security_group ?egress ?id ?ingress
           ?revoke_rules_on_delete ?tags ?tags_all ?vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?egress ?id ?ingress ?revoke_rules_on_delete
    ?tags ?tags_all ?vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?egress ?id ?ingress ?revoke_rules_on_delete ?tags ?tags_all
      ?vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
