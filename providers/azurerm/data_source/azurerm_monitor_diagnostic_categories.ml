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

type azurerm_monitor_diagnostic_categories = {
  id : string prop option; [@option]
  resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_diagnostic_categories) -> ()

let yojson_of_azurerm_monitor_diagnostic_categories =
  (function
   | {
       id = v_id;
       resource_id = v_resource_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
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
    : azurerm_monitor_diagnostic_categories ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_diagnostic_categories

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_monitor_diagnostic_categories ?id ?timeouts ~resource_id
    () : azurerm_monitor_diagnostic_categories =
  { id; resource_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  log_category_groups : string list prop;
  log_category_types : string list prop;
  logs : string list prop;
  metrics : string list prop;
  resource_id : string prop;
}

let make ?id ?timeouts ~resource_id __id =
  let __type = "azurerm_monitor_diagnostic_categories" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       log_category_groups =
         Prop.computed __type __id "log_category_groups";
       log_category_types =
         Prop.computed __type __id "log_category_types";
       logs = Prop.computed __type __id "logs";
       metrics = Prop.computed __type __id "metrics";
       resource_id = Prop.computed __type __id "resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_diagnostic_categories
        (azurerm_monitor_diagnostic_categories ?id ?timeouts
           ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~resource_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
