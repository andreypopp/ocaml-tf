(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_group = {
  email_subject : string prop option; [@option]
  ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  webhook_payload : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action_group) -> ()

let yojson_of_action_group =
  (function
   | {
       email_subject = v_email_subject;
       ids = v_ids;
       webhook_payload = v_webhook_payload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_webhook_payload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "webhook_payload", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string)) v_ids
           in
           let bnd = "ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_email_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_subject", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : action_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action_group

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

type azurerm_monitor_smart_detector_alert_rule = {
  description : string prop option; [@option]
  detector_type : string prop;
  enabled : bool prop option; [@option]
  frequency : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  scope_resource_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  severity : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  throttling_duration : string prop option; [@option]
  action_group : action_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_smart_detector_alert_rule) -> ()

let yojson_of_azurerm_monitor_smart_detector_alert_rule =
  (function
   | {
       description = v_description;
       detector_type = v_detector_type;
       enabled = v_enabled;
       frequency = v_frequency;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       scope_resource_ids = v_scope_resource_ids;
       severity = v_severity;
       tags = v_tags;
       throttling_duration = v_throttling_duration;
       action_group = v_action_group;
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
         if Stdlib.( = ) [] v_action_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_action_group) v_action_group
           in
           let bnd = "action_group", arg in
           bnd :: bnds
       in
       let bnds =
         match v_throttling_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "throttling_duration", arg in
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
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scope_resource_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scope_resource_ids
           in
           let bnd = "scope_resource_ids", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_detector_type in
         ("detector_type", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_smart_detector_alert_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_smart_detector_alert_rule

[@@@deriving.end]

let action_group ?email_subject ?webhook_payload ~ids () :
    action_group =
  { email_subject; ids; webhook_payload }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_smart_detector_alert_rule ?description ?enabled
    ?id ?tags ?throttling_duration ?timeouts ~detector_type
    ~frequency ~name ~resource_group_name ~scope_resource_ids
    ~severity ~action_group () :
    azurerm_monitor_smart_detector_alert_rule =
  {
    description;
    detector_type;
    enabled;
    frequency;
    id;
    name;
    resource_group_name;
    scope_resource_ids;
    severity;
    tags;
    throttling_duration;
    action_group;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  detector_type : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_resource_ids : string list prop;
  severity : string prop;
  tags : string Tf_core.assoc prop;
  throttling_duration : string prop;
}

let make ?description ?enabled ?id ?tags ?throttling_duration
    ?timeouts ~detector_type ~frequency ~name ~resource_group_name
    ~scope_resource_ids ~severity ~action_group __id =
  let __type = "azurerm_monitor_smart_detector_alert_rule" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       detector_type = Prop.computed __type __id "detector_type";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope_resource_ids =
         Prop.computed __type __id "scope_resource_ids";
       severity = Prop.computed __type __id "severity";
       tags = Prop.computed __type __id "tags";
       throttling_duration =
         Prop.computed __type __id "throttling_duration";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_smart_detector_alert_rule
        (azurerm_monitor_smart_detector_alert_rule ?description
           ?enabled ?id ?tags ?throttling_duration ?timeouts
           ~detector_type ~frequency ~name ~resource_group_name
           ~scope_resource_ids ~severity ~action_group ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags
    ?throttling_duration ?timeouts ~detector_type ~frequency ~name
    ~resource_group_name ~scope_resource_ids ~severity ~action_group
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ?throttling_duration
      ?timeouts ~detector_type ~frequency ~name ~resource_group_name
      ~scope_resource_ids ~severity ~action_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
