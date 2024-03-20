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

type azurerm_sentinel_alert_rule_machine_learning_behavior_analytics = {
  alert_rule_template_guid : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_sentinel_alert_rule_machine_learning_behavior_analytics) ->
  ()

let yojson_of_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics
    =
  (function
   | {
       alert_rule_template_guid = v_alert_rule_template_guid;
       enabled = v_enabled;
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
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_alert_rule_template_guid
         in
         ("alert_rule_template_guid", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_alert_rule_machine_learning_behavior_analytics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_machine_learning_behavior_analytics
    ?enabled ?id ?timeouts ~alert_rule_template_guid
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_alert_rule_machine_learning_behavior_analytics =
  {
    alert_rule_template_guid;
    enabled;
    id;
    log_analytics_workspace_id;
    name;
    timeouts;
  }

type t = {
  alert_rule_template_guid : string prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

let make ?enabled ?id ?timeouts ~alert_rule_template_guid
    ~log_analytics_workspace_id ~name __id =
  let __type =
    "azurerm_sentinel_alert_rule_machine_learning_behavior_analytics"
  in
  let __attrs =
    ({
       alert_rule_template_guid =
         Prop.computed __type __id "alert_rule_template_guid";
       enabled = Prop.computed __type __id "enabled";
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
      yojson_of_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics
        (azurerm_sentinel_alert_rule_machine_learning_behavior_analytics
           ?enabled ?id ?timeouts ~alert_rule_template_guid
           ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?timeouts
    ~alert_rule_template_guid ~log_analytics_workspace_id ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?timeouts ~alert_rule_template_guid
      ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
