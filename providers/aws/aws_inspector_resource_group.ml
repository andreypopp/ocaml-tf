(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_inspector_resource_group = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list;  (** tags *)
}
[@@deriving yojson_of]
(** aws_inspector_resource_group *)

let aws_inspector_resource_group ?id ~tags () :
    aws_inspector_resource_group =
  { id; tags }

type t = {
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
}

let make ?id ~tags __id =
  let __type = "aws_inspector_resource_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector_resource_group
        (aws_inspector_resource_group ?id ~tags ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~tags __id =
  let (r : _ Tf_core.resource) = make ?id ~tags __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
