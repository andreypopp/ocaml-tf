(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_verifiedpermissions_policy_template = {
  description : string prop option; [@option]  (** description *)
  policy_store_id : string prop;  (** policy_store_id *)
  statement : string prop;  (** statement *)
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_policy_template *)

let aws_verifiedpermissions_policy_template ?description
    ~policy_store_id ~statement () :
    aws_verifiedpermissions_policy_template =
  { description; policy_store_id; statement }

type t = {
  created_date : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
  policy_template_id : string prop;
  statement : string prop;
}

let make ?description ~policy_store_id ~statement __id =
  let __type = "aws_verifiedpermissions_policy_template" in
  let __attrs =
    ({
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       policy_store_id = Prop.computed __type __id "policy_store_id";
       policy_template_id =
         Prop.computed __type __id "policy_template_id";
       statement = Prop.computed __type __id "statement";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedpermissions_policy_template
        (aws_verifiedpermissions_policy_template ?description
           ~policy_store_id ~statement ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~policy_store_id ~statement __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ~policy_store_id ~statement __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
