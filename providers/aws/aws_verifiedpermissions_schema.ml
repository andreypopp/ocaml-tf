(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type definition = { value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : definition) -> ()

let yojson_of_definition =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition

[@@@deriving.end]

type aws_verifiedpermissions_schema = {
  policy_store_id : string prop;
  definition : definition;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedpermissions_schema) -> ()

let yojson_of_aws_verifiedpermissions_schema =
  (function
   | {
       policy_store_id = v_policy_store_id;
       definition = v_definition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_definition v_definition in
         ("definition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_store_id
         in
         ("policy_store_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_verifiedpermissions_schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedpermissions_schema

[@@@deriving.end]

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
