(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_cidr_collection = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_cidr_collection *)

let aws_route53_cidr_collection ~name () :
    aws_route53_cidr_collection =
  { name }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  version : float prop;
}

let make ~name __id =
  let __type = "aws_route53_cidr_collection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_cidr_collection
        (aws_route53_cidr_collection ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~name __id =
  let (r : _ Tf_core.resource) = make ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
