(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type retention_policy = { days : float prop; enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_policy) -> ()

let yojson_of_retention_policy =
  (function
   | { days = v_days; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_days in
         ("days", arg) :: bnds
       in
       `Assoc bnds
    : retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_policy

[@@@deriving.end]

type azurerm_monitor_log_profile = {
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_log_profile) -> ()

let yojson_of_azurerm_monitor_log_profile =
  (function
   | { id = v_id; name = v_name; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_monitor_log_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_log_profile

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_monitor_log_profile ?id ?timeouts ~name () :
    azurerm_monitor_log_profile =
  { id; name; timeouts }

type t = {
  tf_name : string;
  categories : string list prop;
  id : string prop;
  locations : string list prop;
  name : string prop;
  retention_policy : retention_policy list prop;
  servicebus_rule_id : string prop;
  storage_account_id : string prop;
}

let make ?id ?timeouts ~name __id =
  let __type = "azurerm_monitor_log_profile" in
  let __attrs =
    ({
       tf_name = __id;
       categories = Prop.computed __type __id "categories";
       id = Prop.computed __type __id "id";
       locations = Prop.computed __type __id "locations";
       name = Prop.computed __type __id "name";
       retention_policy =
         Prop.computed __type __id "retention_policy";
       servicebus_rule_id =
         Prop.computed __type __id "servicebus_rule_id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_log_profile
        (azurerm_monitor_log_profile ?id ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
