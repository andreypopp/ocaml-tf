(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_ip = {
  ip : string prop;  (** ip *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** target_ip *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route53_resolver_rule = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  resolver_endpoint_id : string prop option; [@option]
      (** resolver_endpoint_id *)
  rule_type : string prop;  (** rule_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_ip : target_ip list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule *)

let target_ip ?port ?protocol ~ip () : target_ip =
  { ip; port; protocol }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route53_resolver_rule ?id ?name ?resolver_endpoint_id ?tags
    ?tags_all ?timeouts ~domain_name ~rule_type ~target_ip () :
    aws_route53_resolver_rule =
  {
    domain_name;
    id;
    name;
    resolver_endpoint_id;
    rule_type;
    tags;
    tags_all;
    target_ip;
    timeouts;
  }

type t = {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  rule_type : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?resolver_endpoint_id ?tags ?tags_all ?timeouts
    ~domain_name ~rule_type ~target_ip __id =
  let __type = "aws_route53_resolver_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       resolver_endpoint_id =
         Prop.computed __type __id "resolver_endpoint_id";
       rule_type = Prop.computed __type __id "rule_type";
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
      yojson_of_aws_route53_resolver_rule
        (aws_route53_resolver_rule ?id ?name ?resolver_endpoint_id
           ?tags ?tags_all ?timeouts ~domain_name ~rule_type
           ~target_ip ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?resolver_endpoint_id ?tags
    ?tags_all ?timeouts ~domain_name ~rule_type ~target_ip __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?resolver_endpoint_id ?tags ?tags_all ?timeouts
      ~domain_name ~rule_type ~target_ip __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
