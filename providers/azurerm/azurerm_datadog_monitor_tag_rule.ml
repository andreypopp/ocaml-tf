(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log__filter = {
  action : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log__filter) -> ()

let yojson_of_log__filter =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : log__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log__filter

[@@@deriving.end]

type log = {
  aad_log_enabled : bool prop option; [@option]
  resource_log_enabled : bool prop option; [@option]
  subscription_log_enabled : bool prop option; [@option]
  filter : log__filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log) -> ()

let yojson_of_log =
  (function
   | {
       aad_log_enabled = v_aad_log_enabled;
       resource_log_enabled = v_resource_log_enabled;
       subscription_log_enabled = v_subscription_log_enabled;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_log__filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_subscription_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "subscription_log_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "resource_log_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aad_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "aad_log_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log

[@@@deriving.end]

type metric__filter = {
  action : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric__filter) -> ()

let yojson_of_metric__filter =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : metric__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric__filter

[@@@deriving.end]

type metric = { filter : metric__filter list }
[@@deriving_inline yojson_of]

let _ = fun (_ : metric) -> ()

let yojson_of_metric =
  (function
   | { filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metric__filter v_filter
         in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_datadog_monitor_tag_rule = {
  datadog_monitor_id : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  log : log list;
  metric : metric list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_datadog_monitor_tag_rule) -> ()

let yojson_of_azurerm_datadog_monitor_tag_rule =
  (function
   | {
       datadog_monitor_id = v_datadog_monitor_id;
       id = v_id;
       name = v_name;
       log = v_log;
       metric = v_metric;
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
         let arg = yojson_of_list yojson_of_metric v_metric in
         ("metric", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_log v_log in
         ("log", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_datadog_monitor_id
         in
         ("datadog_monitor_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_datadog_monitor_tag_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_datadog_monitor_tag_rule

[@@@deriving.end]

let log__filter ~action ~name ~value () : log__filter =
  { action; name; value }

let log ?aad_log_enabled ?resource_log_enabled
    ?subscription_log_enabled ?(filter = []) () : log =
  {
    aad_log_enabled;
    resource_log_enabled;
    subscription_log_enabled;
    filter;
  }

let metric__filter ~action ~name ~value () : metric__filter =
  { action; name; value }

let metric ?(filter = []) () : metric = { filter }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_datadog_monitor_tag_rule ?id ?name ?(log = [])
    ?(metric = []) ?timeouts ~datadog_monitor_id () :
    azurerm_datadog_monitor_tag_rule =
  { datadog_monitor_id; id; name; log; metric; timeouts }

type t = {
  datadog_monitor_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?name ?(log = []) ?(metric = []) ?timeouts
    ~datadog_monitor_id __id =
  let __type = "azurerm_datadog_monitor_tag_rule" in
  let __attrs =
    ({
       datadog_monitor_id =
         Prop.computed __type __id "datadog_monitor_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_datadog_monitor_tag_rule
        (azurerm_datadog_monitor_tag_rule ?id ?name ~log ~metric
           ?timeouts ~datadog_monitor_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?(log = []) ?(metric = [])
    ?timeouts ~datadog_monitor_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ~log ~metric ?timeouts ~datadog_monitor_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
