(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_dnssec_config = {
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_dnssec_config *)

let aws_route53_resolver_dnssec_config ?id ~resource_id () :
    aws_route53_resolver_dnssec_config =
  { id; resource_id }

type t = {
  arn : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
  validation_status : string prop;
}

let make ?id ~resource_id __id =
  let __type = "aws_route53_resolver_dnssec_config" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       resource_id = Prop.computed __type __id "resource_id";
       validation_status =
         Prop.computed __type __id "validation_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_dnssec_config
        (aws_route53_resolver_dnssec_config ?id ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~resource_id __id =
  let (r : _ Tf_core.resource) = make ?id ~resource_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
