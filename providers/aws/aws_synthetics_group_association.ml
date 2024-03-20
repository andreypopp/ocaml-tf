(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_synthetics_group_association = {
  canary_arn : string prop;  (** canary_arn *)
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_synthetics_group_association *)

let aws_synthetics_group_association ?id ~canary_arn ~group_name () :
    aws_synthetics_group_association =
  { canary_arn; group_name; id }

type t = {
  canary_arn : string prop;
  group_arn : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
}

let make ?id ~canary_arn ~group_name __id =
  let __type = "aws_synthetics_group_association" in
  let __attrs =
    ({
       canary_arn = Prop.computed __type __id "canary_arn";
       group_arn = Prop.computed __type __id "group_arn";
       group_id = Prop.computed __type __id "group_id";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_synthetics_group_association
        (aws_synthetics_group_association ?id ~canary_arn ~group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~canary_arn ~group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~canary_arn ~group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
