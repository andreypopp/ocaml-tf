(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_domain_list = {
  domains : string prop list option; [@option]  (** domains *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_domain_list *)

let aws_route53_resolver_firewall_domain_list ?domains ?id ?tags
    ?tags_all ~name () : aws_route53_resolver_firewall_domain_list =
  { domains; id; name; tags; tags_all }

type t = {
  arn : string prop;
  domains : string list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?domains ?id ?tags ?tags_all ~name __id =
  let __type = "aws_route53_resolver_firewall_domain_list" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       domains = Prop.computed __type __id "domains";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_domain_list
        (aws_route53_resolver_firewall_domain_list ?domains ?id ?tags
           ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?domains ?id ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?domains ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
