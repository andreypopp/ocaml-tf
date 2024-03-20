(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type definition = { value : string prop  (** value *) }
[@@deriving yojson_of]
(** definition *)

type aws_verifiedpermissions_schema = {
  policy_store_id : string prop;  (** policy_store_id *)
  definition : definition;
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_schema *)

let definition ~value () : definition = { value }

let aws_verifiedpermissions_schema ~policy_store_id ~definition () :
    aws_verifiedpermissions_schema =
  { policy_store_id; definition }

type t = {
  id : string prop;
  namespaces : string list prop;
  policy_store_id : string prop;
}

let make ~policy_store_id ~definition __id =
  let __type = "aws_verifiedpermissions_schema" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       namespaces = Prop.computed __type __id "namespaces";
       policy_store_id = Prop.computed __type __id "policy_store_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedpermissions_schema
        (aws_verifiedpermissions_schema ~policy_store_id ~definition
           ());
    attrs = __attrs;
  }

let register ?tf_module ~policy_store_id ~definition __id =
  let (r : _ Tf_core.resource) =
    make ~policy_store_id ~definition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
