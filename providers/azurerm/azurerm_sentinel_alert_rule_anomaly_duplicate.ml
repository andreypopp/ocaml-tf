(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type multi_select_observation = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multi_select_observation) -> ()

let yojson_of_multi_select_observation =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : multi_select_observation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multi_select_observation

[@@@deriving.end]

type prioritized_exclude_observation = {
  exclude : string prop option; [@option]
  name : string prop;
  prioritize : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : prioritized_exclude_observation) -> ()

let yojson_of_prioritized_exclude_observation =
  (function
   | {
       exclude = v_exclude;
       name = v_name;
       prioritize = v_prioritize;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prioritize with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prioritize", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exclude", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : prioritized_exclude_observation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_prioritized_exclude_observation

[@@@deriving.end]

type single_select_observation = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : single_select_observation) -> ()

let yojson_of_single_select_observation =
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
    : single_select_observation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_single_select_observation

[@@@deriving.end]

type threshold_observation = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_observation) -> ()

let yojson_of_threshold_observation =
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
    : threshold_observation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_observation

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

type required_data_connector = {
  connector_id : string prop;
  data_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : required_data_connector) -> ()

let yojson_of_required_data_connector =
  (function
   | { connector_id = v_connector_id; data_types = v_data_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_data_types
           in
           let bnd = "data_types", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connector_id in
         ("connector_id", arg) :: bnds
       in
       `Assoc bnds
    : required_data_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_required_data_connector

[@@@deriving.end]

type azurerm_sentinel_alert_rule_anomaly_duplicate = {
  built_in_rule_id : string prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  mode : string prop;
  multi_select_observation : multi_select_observation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prioritized_exclude_observation :
    prioritized_exclude_observation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  single_select_observation : single_select_observation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threshold_observation : threshold_observation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_alert_rule_anomaly_duplicate) -> ()

let yojson_of_azurerm_sentinel_alert_rule_anomaly_duplicate =
  (function
   | {
       built_in_rule_id = v_built_in_rule_id;
       display_name = v_display_name;
       enabled = v_enabled;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       mode = v_mode;
       multi_select_observation = v_multi_select_observation;
       prioritized_exclude_observation =
         v_prioritized_exclude_observation;
       single_select_observation = v_single_select_observation;
       threshold_observation = v_threshold_observation;
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
         if Stdlib.( = ) [] v_threshold_observation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_threshold_observation)
               v_threshold_observation
           in
           let bnd = "threshold_observation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_single_select_observation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_single_select_observation)
               v_single_select_observation
           in
           let bnd = "single_select_observation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_prioritized_exclude_observation then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_prioritized_exclude_observation)
               v_prioritized_exclude_observation
           in
           let bnd = "prioritized_exclude_observation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_multi_select_observation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_multi_select_observation)
               v_multi_select_observation
           in
           let bnd = "multi_select_observation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_built_in_rule_id
         in
         ("built_in_rule_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_alert_rule_anomaly_duplicate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_alert_rule_anomaly_duplicate

[@@@deriving.end]

let multi_select_observation ~name ~values () :
    multi_select_observation =
  { name; values }

let prioritized_exclude_observation ?exclude ?prioritize ~name () :
    prioritized_exclude_observation =
  { exclude; name; prioritize }

let single_select_observation ~name ~value () :
    single_select_observation =
  { name; value }

let threshold_observation ~name ~value () : threshold_observation =
  { name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_anomaly_duplicate ?id
    ?(multi_select_observation = [])
    ?(prioritized_exclude_observation = [])
    ?(single_select_observation = []) ?(threshold_observation = [])
    ?timeouts ~built_in_rule_id ~display_name ~enabled
    ~log_analytics_workspace_id ~mode () :
    azurerm_sentinel_alert_rule_anomaly_duplicate =
  {
    built_in_rule_id;
    display_name;
    enabled;
    id;
    log_analytics_workspace_id;
    mode;
    multi_select_observation;
    prioritized_exclude_observation;
    single_select_observation;
    threshold_observation;
    timeouts;
  }

type t = {
  tf_name : string;
  anomaly_settings_version : float prop;
  anomaly_version : string prop;
  built_in_rule_id : string prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  is_default_settings : bool prop;
  log_analytics_workspace_id : string prop;
  mode : string prop;
  name : string prop;
  required_data_connector : required_data_connector list prop;
  settings_definition_id : string prop;
  tactics : string list prop;
  techniques : string list prop;
}

let make ?id ?(multi_select_observation = [])
    ?(prioritized_exclude_observation = [])
    ?(single_select_observation = []) ?(threshold_observation = [])
    ?timeouts ~built_in_rule_id ~display_name ~enabled
    ~log_analytics_workspace_id ~mode __id =
  let __type = "azurerm_sentinel_alert_rule_anomaly_duplicate" in
  let __attrs =
    ({
       tf_name = __id;
       anomaly_settings_version =
         Prop.computed __type __id "anomaly_settings_version";
       anomaly_version = Prop.computed __type __id "anomaly_version";
       built_in_rule_id =
         Prop.computed __type __id "built_in_rule_id";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       is_default_settings =
         Prop.computed __type __id "is_default_settings";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       required_data_connector =
         Prop.computed __type __id "required_data_connector";
       settings_definition_id =
         Prop.computed __type __id "settings_definition_id";
       tactics = Prop.computed __type __id "tactics";
       techniques = Prop.computed __type __id "techniques";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_alert_rule_anomaly_duplicate
        (azurerm_sentinel_alert_rule_anomaly_duplicate ?id
           ~multi_select_observation ~prioritized_exclude_observation
           ~single_select_observation ~threshold_observation
           ?timeouts ~built_in_rule_id ~display_name ~enabled
           ~log_analytics_workspace_id ~mode ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(multi_select_observation = [])
    ?(prioritized_exclude_observation = [])
    ?(single_select_observation = []) ?(threshold_observation = [])
    ?timeouts ~built_in_rule_id ~display_name ~enabled
    ~log_analytics_workspace_id ~mode __id =
  let (r : _ Tf_core.resource) =
    make ?id ~multi_select_observation
      ~prioritized_exclude_observation ~single_select_observation
      ~threshold_observation ?timeouts ~built_in_rule_id
      ~display_name ~enabled ~log_analytics_workspace_id ~mode __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
