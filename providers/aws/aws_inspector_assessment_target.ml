(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_inspector_assessment_target = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_arn : string prop option; [@option]
      (** resource_group_arn *)
}
[@@deriving yojson_of]
(** aws_inspector_assessment_target *)

let aws_inspector_assessment_target ?id ?resource_group_arn ~name ()
    : aws_inspector_assessment_target =
  { id; name; resource_group_arn }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_group_arn : string prop;
}

let make ?id ?resource_group_arn ~name __id =
  let __type = "aws_inspector_assessment_target" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_arn =
         Prop.computed __type __id "resource_group_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector_assessment_target
        (aws_inspector_assessment_target ?id ?resource_group_arn
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_group_arn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_group_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
