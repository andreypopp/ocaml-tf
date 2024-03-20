(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_rule_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_rule_group *)

let aws_route53_resolver_firewall_rule_group ?id ?tags ?tags_all
    ~name () : aws_route53_resolver_firewall_rule_group =
  { id; name; tags; tags_all }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name __id =
  let __type = "aws_route53_resolver_firewall_rule_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       share_status = Prop.computed __type __id "share_status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_rule_group
        (aws_route53_resolver_firewall_rule_group ?id ?tags ?tags_all
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
