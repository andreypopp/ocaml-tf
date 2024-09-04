(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__action = {
  action_group_id : string prop;
  action_properties : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__action) -> ()

let yojson_of_rule__action =
  (function
   | {
       action_group_id = v_action_group_id;
       action_properties = v_action_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_action_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "action_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_group_id
         in
         ("action_group_id", arg) :: bnds
       in
       `Assoc bnds
    : rule__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__action

[@@@deriving.end]

type rule__alert_resolution = {
  auto_resolved : bool prop option; [@option]
  time_to_resolve : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__alert_resolution) -> ()

let yojson_of_rule__alert_resolution =
  (function
   | {
       auto_resolved = v_auto_resolved;
       time_to_resolve = v_time_to_resolve;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_to_resolve with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_to_resolve", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_resolved with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_resolved", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__alert_resolution -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__alert_resolution

[@@@deriving.end]

type rule = {
  alert : string prop option; [@option]
  annotations : string prop Tf_core.assoc option; [@option]
  enabled : bool prop option; [@option]
  expression : string prop;
  for_ : string prop option; [@option] [@key "for"]
  labels : string prop Tf_core.assoc option; [@option]
  record : string prop option; [@option]
  severity : float prop option; [@option]
  action : rule__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  alert_resolution : rule__alert_resolution list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       alert = v_alert;
       annotations = v_annotations;
       enabled = v_enabled;
       expression = v_expression;
       for_ = v_for_;
       labels = v_labels;
       record = v_record;
       severity = v_severity;
       action = v_action;
       alert_resolution = v_alert_resolution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_alert_resolution then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__alert_resolution)
               v_alert_resolution
           in
           let bnd = "alert_resolution", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__action) v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       let bnds =
         match v_severity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "severity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_for_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "for", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alert with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alert", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

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

type azurerm_monitor_alert_prometheus_rule_group = {
  cluster_name : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  interval : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  rule_group_enabled : bool prop option; [@option]
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : string prop Tf_core.assoc option; [@option]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_alert_prometheus_rule_group) -> ()

let yojson_of_azurerm_monitor_alert_prometheus_rule_group =
  (function
   | {
       cluster_name = v_cluster_name;
       description = v_description;
       id = v_id;
       interval = v_interval;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       rule_group_enabled = v_rule_group_enabled;
       scopes = v_scopes;
       tags = v_tags;
       rule = v_rule;
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
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_rule_group_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rule_group_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interval", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_alert_prometheus_rule_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_alert_prometheus_rule_group

[@@@deriving.end]

let rule__action ?action_properties ~action_group_id () :
    rule__action =
  { action_group_id; action_properties }

let rule__alert_resolution ?auto_resolved ?time_to_resolve () :
    rule__alert_resolution =
  { auto_resolved; time_to_resolve }

let rule ?alert ?annotations ?enabled ?for_ ?labels ?record ?severity
    ?(action = []) ?(alert_resolution = []) ~expression () : rule =
  {
    alert;
    annotations;
    enabled;
    expression;
    for_;
    labels;
    record;
    severity;
    action;
    alert_resolution;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_alert_prometheus_rule_group ?cluster_name
    ?description ?id ?interval ?rule_group_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~scopes ~rule () :
    azurerm_monitor_alert_prometheus_rule_group =
  {
    cluster_name;
    description;
    id;
    interval;
    location;
    name;
    resource_group_name;
    rule_group_enabled;
    scopes;
    tags;
    rule;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_name : string prop;
  description : string prop;
  id : string prop;
  interval : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  rule_group_enabled : bool prop;
  scopes : string list prop;
  tags : string Tf_core.assoc prop;
}

let make ?cluster_name ?description ?id ?interval ?rule_group_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name ~scopes
    ~rule __id =
  let __type = "azurerm_monitor_alert_prometheus_rule_group" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_name = Prop.computed __type __id "cluster_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       rule_group_enabled =
         Prop.computed __type __id "rule_group_enabled";
       scopes = Prop.computed __type __id "scopes";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_alert_prometheus_rule_group
        (azurerm_monitor_alert_prometheus_rule_group ?cluster_name
           ?description ?id ?interval ?rule_group_enabled ?tags
           ?timeouts ~location ~name ~resource_group_name ~scopes
           ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster_name ?description ?id ?interval
    ?rule_group_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~scopes ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?cluster_name ?description ?id ?interval ?rule_group_enabled
      ?tags ?timeouts ~location ~name ~resource_group_name ~scopes
      ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
