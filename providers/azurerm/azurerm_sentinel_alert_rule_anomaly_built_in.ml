(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type multi_select_observation = {
  description : string prop;
  name : string prop;
  supported_values : string prop list;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multi_select_observation) -> ()

let yojson_of_multi_select_observation =
  (function
   | {
       description = v_description;
       name = v_name;
       supported_values = v_supported_values;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_supported_values
         in
         ("supported_values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : multi_select_observation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multi_select_observation

[@@@deriving.end]

type prioritized_exclude_observation = {
  description : string prop;
  exclude : string prop;
  name : string prop;
  prioritize : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : prioritized_exclude_observation) -> ()

let yojson_of_prioritized_exclude_observation =
  (function
   | {
       description = v_description;
       exclude = v_exclude;
       name = v_name;
       prioritize = v_prioritize;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prioritize in
         ("prioritize", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exclude in
         ("exclude", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : prioritized_exclude_observation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_prioritized_exclude_observation

[@@@deriving.end]

type required_data_connector = {
  connector_id : string prop;
  data_types : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_data_types
         in
         ("data_types", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connector_id in
         ("connector_id", arg) :: bnds
       in
       `Assoc bnds
    : required_data_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_required_data_connector

[@@@deriving.end]

type single_select_observation = {
  description : string prop;
  name : string prop;
  supported_values : string prop list;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : single_select_observation) -> ()

let yojson_of_single_select_observation =
  (function
   | {
       description = v_description;
       name = v_name;
       supported_values = v_supported_values;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_supported_values
         in
         ("supported_values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : single_select_observation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_single_select_observation

[@@@deriving.end]

type threshold_observation = {
  description : string prop;
  max : string prop;
  min : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_observation) -> ()

let yojson_of_threshold_observation =
  (function
   | {
       description = v_description;
       max = v_max;
       min = v_min;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max in
         ("max", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : threshold_observation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_observation

[@@@deriving.end]

type azurerm_sentinel_alert_rule_anomaly_built_in = {
  display_name : string prop option; [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  mode : string prop;
  name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_alert_rule_anomaly_built_in) -> ()

let yojson_of_azurerm_sentinel_alert_rule_anomaly_built_in =
  (function
   | {
       display_name = v_display_name;
       enabled = v_enabled;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       mode = v_mode;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_alert_rule_anomaly_built_in ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_alert_rule_anomaly_built_in

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_anomaly_built_in ?display_name ?id
    ?name ?timeouts ~enabled ~log_analytics_workspace_id ~mode () :
    azurerm_sentinel_alert_rule_anomaly_built_in =
  {
    display_name;
    enabled;
    id;
    log_analytics_workspace_id;
    mode;
    name;
    timeouts;
  }

type t = {
  tf_name : string;
  anomaly_settings_version : float prop;
  anomaly_version : string prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  mode : string prop;
  multi_select_observation : multi_select_observation list prop;
  name : string prop;
  prioritized_exclude_observation :
    prioritized_exclude_observation list prop;
  required_data_connector : required_data_connector list prop;
  settings_definition_id : string prop;
  single_select_observation : single_select_observation list prop;
  tactics : string list prop;
  techniques : string list prop;
  threshold_observation : threshold_observation list prop;
}

let make ?display_name ?id ?name ?timeouts ~enabled
    ~log_analytics_workspace_id ~mode __id =
  let __type = "azurerm_sentinel_alert_rule_anomaly_built_in" in
  let __attrs =
    ({
       tf_name = __id;
       anomaly_settings_version =
         Prop.computed __type __id "anomaly_settings_version";
       anomaly_version = Prop.computed __type __id "anomaly_version";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       mode = Prop.computed __type __id "mode";
       multi_select_observation =
         Prop.computed __type __id "multi_select_observation";
       name = Prop.computed __type __id "name";
       prioritized_exclude_observation =
         Prop.computed __type __id "prioritized_exclude_observation";
       required_data_connector =
         Prop.computed __type __id "required_data_connector";
       settings_definition_id =
         Prop.computed __type __id "settings_definition_id";
       single_select_observation =
         Prop.computed __type __id "single_select_observation";
       tactics = Prop.computed __type __id "tactics";
       techniques = Prop.computed __type __id "techniques";
       threshold_observation =
         Prop.computed __type __id "threshold_observation";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_alert_rule_anomaly_built_in
        (azurerm_sentinel_alert_rule_anomaly_built_in ?display_name
           ?id ?name ?timeouts ~enabled ~log_analytics_workspace_id
           ~mode ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?name ?timeouts ~enabled
    ~log_analytics_workspace_id ~mode __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?name ?timeouts ~enabled
      ~log_analytics_workspace_id ~mode __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
