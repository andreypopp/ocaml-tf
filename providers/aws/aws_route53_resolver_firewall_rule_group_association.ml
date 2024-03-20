(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_rule_group_association = {
  firewall_rule_group_id : string prop;
      (** firewall_rule_group_id *)
  id : string prop option; [@option]  (** id *)
  mutation_protection : string prop option; [@option]
      (** mutation_protection *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_rule_group_association *)

let aws_route53_resolver_firewall_rule_group_association ?id
    ?mutation_protection ?tags ?tags_all ~firewall_rule_group_id
    ~name ~priority ~vpc_id () :
    aws_route53_resolver_firewall_rule_group_association =
  {
    firewall_rule_group_id;
    id;
    mutation_protection;
    name;
    priority;
    tags;
    tags_all;
    vpc_id;
  }

type t = {
  arn : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  mutation_protection : string prop;
  name : string prop;
  priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?mutation_protection ?tags ?tags_all
    ~firewall_rule_group_id ~name ~priority ~vpc_id __id =
  let __type =
    "aws_route53_resolver_firewall_rule_group_association"
  in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       firewall_rule_group_id =
         Prop.computed __type __id "firewall_rule_group_id";
       id = Prop.computed __type __id "id";
       mutation_protection =
         Prop.computed __type __id "mutation_protection";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
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
      yojson_of_aws_route53_resolver_firewall_rule_group_association
        (aws_route53_resolver_firewall_rule_group_association ?id
           ?mutation_protection ?tags ?tags_all
           ~firewall_rule_group_id ~name ~priority ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mutation_protection ?tags ?tags_all
    ~firewall_rule_group_id ~name ~priority ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mutation_protection ?tags ?tags_all
      ~firewall_rule_group_id ~name ~priority ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
