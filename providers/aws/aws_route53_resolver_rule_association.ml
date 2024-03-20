(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route53_resolver_rule_association = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  resolver_rule_id : string prop;  (** resolver_rule_id *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_route53_resolver_rule_association ?id ?name ?timeouts
    ~resolver_rule_id ~vpc_id () :
    aws_route53_resolver_rule_association =
  { id; name; resolver_rule_id; vpc_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  resolver_rule_id : string prop;
  vpc_id : string prop;
}

let make ?id ?name ?timeouts ~resolver_rule_id ~vpc_id __id =
  let __type = "aws_route53_resolver_rule_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resolver_rule_id =
         Prop.computed __type __id "resolver_rule_id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_rule_association
        (aws_route53_resolver_rule_association ?id ?name ?timeouts
           ~resolver_rule_id ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~resolver_rule_id ~vpc_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~resolver_rule_id ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
