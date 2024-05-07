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

type azurerm_sentinel_alert_rule = {
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_alert_rule) -> ()

let yojson_of_azurerm_sentinel_alert_rule =
  (function
   | {
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
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
    : azurerm_sentinel_alert_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_alert_rule

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_sentinel_alert_rule ?id ?timeouts
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_alert_rule =
  { id; log_analytics_workspace_id; name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~log_analytics_workspace_id ~name __id =
  let __type = "azurerm_sentinel_alert_rule" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_alert_rule
        (azurerm_sentinel_alert_rule ?id ?timeouts
           ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~log_analytics_workspace_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~log_analytics_workspace_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
