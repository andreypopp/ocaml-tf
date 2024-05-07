(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_tag_filter = {
  action : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_tag_filter) -> ()

let yojson_of_log_tag_filter =
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
    : log_tag_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_tag_filter

[@@@deriving.end]

type metric_tag_filter = {
  action : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric_tag_filter) -> ()

let yojson_of_metric_tag_filter =
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
    : metric_tag_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric_tag_filter

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

type azurerm_new_relic_tag_rule = {
  activity_log_enabled : bool prop option; [@option]
  azure_active_directory_log_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  metric_enabled : bool prop option; [@option]
  monitor_id : string prop;
  subscription_log_enabled : bool prop option; [@option]
  log_tag_filter : log_tag_filter list;
  metric_tag_filter : metric_tag_filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_new_relic_tag_rule) -> ()

let yojson_of_azurerm_new_relic_tag_rule =
  (function
   | {
       activity_log_enabled = v_activity_log_enabled;
       azure_active_directory_log_enabled =
         v_azure_active_directory_log_enabled;
       id = v_id;
       metric_enabled = v_metric_enabled;
       monitor_id = v_monitor_id;
       subscription_log_enabled = v_subscription_log_enabled;
       log_tag_filter = v_log_tag_filter;
       metric_tag_filter = v_metric_tag_filter;
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
         let arg =
           yojson_of_list yojson_of_metric_tag_filter
             v_metric_tag_filter
         in
         ("metric_tag_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_log_tag_filter v_log_tag_filter
         in
         ("log_tag_filter", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_monitor_id in
         ("monitor_id", arg) :: bnds
       in
       let bnds =
         match v_metric_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "metric_enabled", arg in
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
         match v_azure_active_directory_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "azure_active_directory_log_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_activity_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "activity_log_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_new_relic_tag_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_new_relic_tag_rule

[@@@deriving.end]

let log_tag_filter ~action ~name ~value () : log_tag_filter =
  { action; name; value }

let metric_tag_filter ~action ~name ~value () : metric_tag_filter =
  { action; name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_new_relic_tag_rule ?activity_log_enabled
    ?azure_active_directory_log_enabled ?id ?metric_enabled
    ?subscription_log_enabled ?(log_tag_filter = [])
    ?(metric_tag_filter = []) ?timeouts ~monitor_id () :
    azurerm_new_relic_tag_rule =
  {
    activity_log_enabled;
    azure_active_directory_log_enabled;
    id;
    metric_enabled;
    monitor_id;
    subscription_log_enabled;
    log_tag_filter;
    metric_tag_filter;
    timeouts;
  }

type t = {
  tf_name : string;
  activity_log_enabled : bool prop;
  azure_active_directory_log_enabled : bool prop;
  id : string prop;
  metric_enabled : bool prop;
  monitor_id : string prop;
  subscription_log_enabled : bool prop;
}

let make ?activity_log_enabled ?azure_active_directory_log_enabled
    ?id ?metric_enabled ?subscription_log_enabled
    ?(log_tag_filter = []) ?(metric_tag_filter = []) ?timeouts
    ~monitor_id __id =
  let __type = "azurerm_new_relic_tag_rule" in
  let __attrs =
    ({
       tf_name = __id;
       activity_log_enabled =
         Prop.computed __type __id "activity_log_enabled";
       azure_active_directory_log_enabled =
         Prop.computed __type __id
           "azure_active_directory_log_enabled";
       id = Prop.computed __type __id "id";
       metric_enabled = Prop.computed __type __id "metric_enabled";
       monitor_id = Prop.computed __type __id "monitor_id";
       subscription_log_enabled =
         Prop.computed __type __id "subscription_log_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_new_relic_tag_rule
        (azurerm_new_relic_tag_rule ?activity_log_enabled
           ?azure_active_directory_log_enabled ?id ?metric_enabled
           ?subscription_log_enabled ~log_tag_filter
           ~metric_tag_filter ?timeouts ~monitor_id ());
    attrs = __attrs;
  }

let register ?tf_module ?activity_log_enabled
    ?azure_active_directory_log_enabled ?id ?metric_enabled
    ?subscription_log_enabled ?(log_tag_filter = [])
    ?(metric_tag_filter = []) ?timeouts ~monitor_id __id =
  let (r : _ Tf_core.resource) =
    make ?activity_log_enabled ?azure_active_directory_log_enabled
      ?id ?metric_enabled ?subscription_log_enabled ~log_tag_filter
      ~metric_tag_filter ?timeouts ~monitor_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
