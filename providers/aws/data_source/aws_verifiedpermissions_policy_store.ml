(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validation_settings = { mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_settings) -> ()

let yojson_of_validation_settings =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : validation_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_settings

[@@@deriving.end]

type aws_verifiedpermissions_policy_store = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedpermissions_policy_store) -> ()

let yojson_of_aws_verifiedpermissions_policy_store =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_verifiedpermissions_policy_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedpermissions_policy_store

[@@@deriving.end]

let aws_verifiedpermissions_policy_store ~id () :
    aws_verifiedpermissions_policy_store =
  { id }

type t = {
  arn : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  validation_settings : validation_settings list prop;
}

let make ~id __id =
  let __type = "aws_verifiedpermissions_policy_store" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       validation_settings =
         Prop.computed __type __id "validation_settings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedpermissions_policy_store
        (aws_verifiedpermissions_policy_store ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
