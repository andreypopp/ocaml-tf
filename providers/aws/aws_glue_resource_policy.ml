(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_glue_resource_policy = {
  enable_hybrid : string prop option; [@option]  (** enable_hybrid *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_glue_resource_policy *)

let aws_glue_resource_policy ?enable_hybrid ?id ~policy () :
    aws_glue_resource_policy =
  { enable_hybrid; id; policy }

type t = {
  enable_hybrid : string prop;
  id : string prop;
  policy : string prop;
}

let make ?enable_hybrid ?id ~policy __id =
  let __type = "aws_glue_resource_policy" in
  let __attrs =
    ({
       enable_hybrid = Prop.computed __type __id "enable_hybrid";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_resource_policy
        (aws_glue_resource_policy ?enable_hybrid ?id ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_hybrid ?id ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?enable_hybrid ?id ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
