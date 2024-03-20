(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_schemas_registry_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  registry_name : string prop;  (** registry_name *)
}
[@@deriving yojson_of]
(** aws_schemas_registry_policy *)

let aws_schemas_registry_policy ?id ~policy ~registry_name () :
    aws_schemas_registry_policy =
  { id; policy; registry_name }

type t = {
  id : string prop;
  policy : string prop;
  registry_name : string prop;
}

let make ?id ~policy ~registry_name __id =
  let __type = "aws_schemas_registry_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       registry_name = Prop.computed __type __id "registry_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_schemas_registry_policy
        (aws_schemas_registry_policy ?id ~policy ~registry_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~registry_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy ~registry_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
