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

type aws_verifiedpermissions_policy_store = {
  description : string prop option; [@option]
  validation_settings : validation_settings list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedpermissions_policy_store) -> ()

let yojson_of_aws_verifiedpermissions_policy_store =
  (function
   | {
       description = v_description;
       validation_settings = v_validation_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_validation_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_validation_settings)
               v_validation_settings
           in
           let bnd = "validation_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_verifiedpermissions_policy_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedpermissions_policy_store

[@@@deriving.end]

let validation_settings ~mode () : validation_settings = { mode }

let aws_verifiedpermissions_policy_store ?description
    ?(validation_settings = []) () :
    aws_verifiedpermissions_policy_store =
  { description; validation_settings }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
}

let make ?description ?(validation_settings = []) __id =
  let __type = "aws_verifiedpermissions_policy_store" in
  let __attrs =
    ({
       tf_name = __id;
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

let register ?tf_module ?description ?(validation_settings = []) __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ~validation_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
