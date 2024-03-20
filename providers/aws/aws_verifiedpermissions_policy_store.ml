(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validation_settings = { mode : string prop  (** mode *) }
[@@deriving yojson_of]
(** validation_settings *)

type aws_verifiedpermissions_policy_store = {
  description : string prop option; [@option]  (** description *)
  validation_settings : validation_settings list;
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_policy_store *)

let validation_settings ~mode () : validation_settings = { mode }

let aws_verifiedpermissions_policy_store ?description
    ~validation_settings () : aws_verifiedpermissions_policy_store =
  { description; validation_settings }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
}

let make ?description ~validation_settings __id =
  let __type = "aws_verifiedpermissions_policy_store" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       policy_store_id = Prop.computed __type __id "policy_store_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedpermissions_policy_store
        (aws_verifiedpermissions_policy_store ?description
           ~validation_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~validation_settings __id =
  let (r : _ Tf_core.resource) =
    make ?description ~validation_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
