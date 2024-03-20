(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_delegation_set = {
  id : string prop option; [@option]  (** id *)
  reference_name : string prop option; [@option]
      (** reference_name *)
}
[@@deriving yojson_of]
(** aws_route53_delegation_set *)

let aws_route53_delegation_set ?id ?reference_name () :
    aws_route53_delegation_set =
  { id; reference_name }

type t = {
  arn : string prop;
  id : string prop;
  name_servers : string list prop;
  reference_name : string prop;
}

let make ?id ?reference_name __id =
  let __type = "aws_route53_delegation_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name_servers = Prop.computed __type __id "name_servers";
       reference_name = Prop.computed __type __id "reference_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_delegation_set
        (aws_route53_delegation_set ?id ?reference_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?reference_name __id =
  let (r : _ Tf_core.resource) = make ?id ?reference_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
