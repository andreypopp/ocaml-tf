(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecr_lifecycle_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  repository : string prop;  (** repository *)
}
[@@deriving yojson_of]
(** aws_ecr_lifecycle_policy *)

let aws_ecr_lifecycle_policy ?id ~policy ~repository () :
    aws_ecr_lifecycle_policy =
  { id; policy; repository }

type t = {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository : string prop;
}

let make ?id ~policy ~repository __id =
  let __type = "aws_ecr_lifecycle_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       registry_id = Prop.computed __type __id "registry_id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_lifecycle_policy
        (aws_ecr_lifecycle_policy ?id ~policy ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~repository __id =
  let (r : _ Tf_core.resource) = make ?id ~policy ~repository __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
