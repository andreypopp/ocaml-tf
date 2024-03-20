(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_domain = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_lightsail_domain *)

let aws_lightsail_domain ?id ~domain_name () : aws_lightsail_domain =
  { domain_name; id }

type t = {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
}

let make ?id ~domain_name __id =
  let __type = "aws_lightsail_domain" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_domain
        (aws_lightsail_domain ?id ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~domain_name __id =
  let (r : _ Tf_core.resource) = make ?id ~domain_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
