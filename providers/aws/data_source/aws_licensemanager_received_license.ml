(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type consumption_configuration__provisional_configuration = {
  max_time_to_live_in_minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : consumption_configuration__provisional_configuration) -> ()

let yojson_of_consumption_configuration__provisional_configuration =
  (function
   | { max_time_to_live_in_minutes = v_max_time_to_live_in_minutes }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_time_to_live_in_minutes
         in
         ("max_time_to_live_in_minutes", arg) :: bnds
       in
       `Assoc bnds
    : consumption_configuration__provisional_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_consumption_configuration__provisional_configuration

[@@@deriving.end]

type consumption_configuration__borrow_configuration = {
  allow_early_check_in : bool prop;
  max_time_to_live_in_minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : consumption_configuration__borrow_configuration) -> ()

let yojson_of_consumption_configuration__borrow_configuration =
  (function
   | {
       allow_early_check_in = v_allow_early_check_in;
       max_time_to_live_in_minutes = v_max_time_to_live_in_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_time_to_live_in_minutes
         in
         ("max_time_to_live_in_minutes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_early_check_in
         in
         ("allow_early_check_in", arg) :: bnds
       in
       `Assoc bnds
    : consumption_configuration__borrow_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consumption_configuration__borrow_configuration

[@@@deriving.end]

type consumption_configuration = {
  borrow_configuration :
    consumption_configuration__borrow_configuration list;
  provisional_configuration :
    consumption_configuration__provisional_configuration list;
  renew_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : consumption_configuration) -> ()

let yojson_of_consumption_configuration =
  (function
   | {
       borrow_configuration = v_borrow_configuration;
       provisional_configuration = v_provisional_configuration;
       renew_type = v_renew_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_renew_type in
         ("renew_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_consumption_configuration__provisional_configuration
             v_provisional_configuration
         in
         ("provisional_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_consumption_configuration__borrow_configuration
             v_borrow_configuration
         in
         ("borrow_configuration", arg) :: bnds
       in
       `Assoc bnds
    : consumption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consumption_configuration

[@@@deriving.end]

type entitlements = {
  allow_check_in : bool prop;
  max_count : float prop;
  name : string prop;
  unit : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : entitlements) -> ()

let yojson_of_entitlements =
  (function
   | {
       allow_check_in = v_allow_check_in;
       max_count = v_max_count;
       name = v_name;
       unit = v_unit;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_count in
         ("max_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_allow_check_in in
         ("allow_check_in", arg) :: bnds
       in
       `Assoc bnds
    : entitlements -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entitlements

[@@@deriving.end]

type issuer = {
  key_fingerprint : string prop;
  name : string prop;
  sign_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuer) -> ()

let yojson_of_issuer =
  (function
   | {
       key_fingerprint = v_key_fingerprint;
       name = v_name;
       sign_key = v_sign_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sign_key in
         ("sign_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_fingerprint
         in
         ("key_fingerprint", arg) :: bnds
       in
       `Assoc bnds
    : issuer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuer

[@@@deriving.end]

type license_metadata = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : license_metadata) -> ()

let yojson_of_license_metadata =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : license_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_license_metadata

[@@@deriving.end]

type received_metadata = {
  allowed_operations : string prop list;
  received_status : string prop;
  received_status_reason : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : received_metadata) -> ()

let yojson_of_received_metadata =
  (function
   | {
       allowed_operations = v_allowed_operations;
       received_status = v_received_status;
       received_status_reason = v_received_status_reason;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_received_status_reason
         in
         ("received_status_reason", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_received_status
         in
         ("received_status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_operations
         in
         ("allowed_operations", arg) :: bnds
       in
       `Assoc bnds
    : received_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_received_metadata

[@@@deriving.end]

type validity = {
  begin_ : string prop; [@key "begin"]
  end_ : string prop; [@key "end"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validity) -> ()

let yojson_of_validity =
  (function
   | { begin_ = v_begin_; end_ = v_end_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_ in
         ("end", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_begin_ in
         ("begin", arg) :: bnds
       in
       `Assoc bnds
    : validity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validity

[@@@deriving.end]

type aws_licensemanager_received_license = {
  id : string prop option; [@option]
  license_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_licensemanager_received_license) -> ()

let yojson_of_aws_licensemanager_received_license =
  (function
   | { id = v_id; license_arn = v_license_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_license_arn in
         ("license_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_licensemanager_received_license ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_licensemanager_received_license

[@@@deriving.end]

let aws_licensemanager_received_license ?id ~license_arn () :
    aws_licensemanager_received_license =
  { id; license_arn }

type t = {
  tf_name : string;
  beneficiary : string prop;
  consumption_configuration : consumption_configuration list prop;
  create_time : string prop;
  entitlements : entitlements list prop;
  home_region : string prop;
  id : string prop;
  issuer : issuer list prop;
  license_arn : string prop;
  license_metadata : license_metadata list prop;
  license_name : string prop;
  product_name : string prop;
  product_sku : string prop;
  received_metadata : received_metadata list prop;
  status : string prop;
  validity : validity list prop;
  version : string prop;
}

let make ?id ~license_arn __id =
  let __type = "aws_licensemanager_received_license" in
  let __attrs =
    ({
       tf_name = __id;
       beneficiary = Prop.computed __type __id "beneficiary";
       consumption_configuration =
         Prop.computed __type __id "consumption_configuration";
       create_time = Prop.computed __type __id "create_time";
       entitlements = Prop.computed __type __id "entitlements";
       home_region = Prop.computed __type __id "home_region";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       license_arn = Prop.computed __type __id "license_arn";
       license_metadata =
         Prop.computed __type __id "license_metadata";
       license_name = Prop.computed __type __id "license_name";
       product_name = Prop.computed __type __id "product_name";
       product_sku = Prop.computed __type __id "product_sku";
       received_metadata =
         Prop.computed __type __id "received_metadata";
       status = Prop.computed __type __id "status";
       validity = Prop.computed __type __id "validity";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_licensemanager_received_license
        (aws_licensemanager_received_license ?id ~license_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~license_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~license_arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
