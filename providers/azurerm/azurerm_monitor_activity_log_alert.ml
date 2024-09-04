(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  action_group_id : string prop;
  webhook_properties : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | {
       action_group_id = v_action_group_id;
       webhook_properties = v_webhook_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_webhook_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "webhook_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_group_id
         in
         ("action_group_id", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type criteria__resource_health = {
  current : string prop list option; [@option]
  previous : string prop list option; [@option]
  reason : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_health) -> ()

let yojson_of_criteria__resource_health =
  (function
   | {
       current = v_current;
       previous = v_previous;
       reason = v_reason;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reason with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "reason", arg in
             bnd :: bnds
       in
       let bnds =
         match v_previous with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "previous", arg in
             bnd :: bnds
       in
       let bnds =
         match v_current with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "current", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : criteria__resource_health -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_health

[@@@deriving.end]

type criteria__service_health = {
  events : string prop list option; [@option]
  locations : string prop list option; [@option]
  services : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__service_health) -> ()

let yojson_of_criteria__service_health =
  (function
   | {
       events = v_events;
       locations = v_locations;
       services = v_services;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "services", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "locations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "events", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : criteria__service_health -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__service_health

[@@@deriving.end]

type criteria = {
  caller : string prop option; [@option]
  category : string prop;
  level : string prop option; [@option]
  levels : string prop list option; [@option]
  operation_name : string prop option; [@option]
  recommendation_category : string prop option; [@option]
  recommendation_impact : string prop option; [@option]
  recommendation_type : string prop option; [@option]
  resource_group : string prop option; [@option]
  resource_groups : string prop list option; [@option]
  resource_id : string prop option; [@option]
  resource_ids : string prop list option; [@option]
  resource_provider : string prop option; [@option]
  resource_providers : string prop list option; [@option]
  resource_type : string prop option; [@option]
  resource_types : string prop list option; [@option]
  status : string prop option; [@option]
  statuses : string prop list option; [@option]
  sub_status : string prop option; [@option]
  sub_statuses : string prop list option; [@option]
  resource_health : criteria__resource_health list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_health : criteria__service_health list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria) -> ()

let yojson_of_criteria =
  (function
   | {
       caller = v_caller;
       category = v_category;
       level = v_level;
       levels = v_levels;
       operation_name = v_operation_name;
       recommendation_category = v_recommendation_category;
       recommendation_impact = v_recommendation_impact;
       recommendation_type = v_recommendation_type;
       resource_group = v_resource_group;
       resource_groups = v_resource_groups;
       resource_id = v_resource_id;
       resource_ids = v_resource_ids;
       resource_provider = v_resource_provider;
       resource_providers = v_resource_providers;
       resource_type = v_resource_type;
       resource_types = v_resource_types;
       status = v_status;
       statuses = v_statuses;
       sub_status = v_sub_status;
       sub_statuses = v_sub_statuses;
       resource_health = v_resource_health;
       service_health = v_service_health;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_service_health then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__service_health)
               v_service_health
           in
           let bnd = "service_health", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_health then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__resource_health)
               v_resource_health
           in
           let bnd = "resource_health", arg in
           bnd :: bnds
       in
       let bnds =
         match v_sub_statuses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "sub_statuses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sub_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sub_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statuses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "statuses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_providers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_providers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_provider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recommendation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recommendation_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recommendation_impact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recommendation_impact", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recommendation_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recommendation_category", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operation_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_levels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "levels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       let bnds =
         match v_caller with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "caller", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria

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

type azurerm_monitor_activity_log_alert = {
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : string prop Tf_core.assoc option; [@option]
  action : action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  criteria : criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_activity_log_alert) -> ()

let yojson_of_azurerm_monitor_activity_log_alert =
  (function
   | {
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       scopes = v_scopes;
       tags = v_tags;
       action = v_action;
       criteria = v_criteria;
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
         if Stdlib.( = ) [] v_criteria then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria) v_criteria
           in
           let bnd = "criteria", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg = (yojson_of_list yojson_of_action) v_action in
           let bnd = "action", arg in
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
       `Assoc bnds
    : azurerm_monitor_activity_log_alert ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_activity_log_alert

[@@@deriving.end]

let action ?webhook_properties ~action_group_id () : action =
  { action_group_id; webhook_properties }

let criteria__resource_health ?current ?previous ?reason () :
    criteria__resource_health =
  { current; previous; reason }

let criteria__service_health ?events ?locations ?services () :
    criteria__service_health =
  { events; locations; services }

let criteria ?caller ?level ?levels ?operation_name
    ?recommendation_category ?recommendation_impact
    ?recommendation_type ?resource_group ?resource_groups
    ?resource_id ?resource_ids ?resource_provider ?resource_providers
    ?resource_type ?resource_types ?status ?statuses ?sub_status
    ?sub_statuses ?(resource_health = []) ?(service_health = [])
    ~category () : criteria =
  {
    caller;
    category;
    level;
    levels;
    operation_name;
    recommendation_category;
    recommendation_impact;
    recommendation_type;
    resource_group;
    resource_groups;
    resource_id;
    resource_ids;
    resource_provider;
    resource_providers;
    resource_type;
    resource_types;
    status;
    statuses;
    sub_status;
    sub_statuses;
    resource_health;
    service_health;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_activity_log_alert ?description ?enabled ?id
    ?location ?tags ?(action = []) ?timeouts ~name
    ~resource_group_name ~scopes ~criteria () :
    azurerm_monitor_activity_log_alert =
  {
    description;
    enabled;
    id;
    location;
    name;
    resource_group_name;
    scopes;
    tags;
    action;
    criteria;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : string Tf_core.assoc prop;
}

let make ?description ?enabled ?id ?location ?tags ?(action = [])
    ?timeouts ~name ~resource_group_name ~scopes ~criteria __id =
  let __type = "azurerm_monitor_activity_log_alert" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scopes = Prop.computed __type __id "scopes";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_activity_log_alert
        (azurerm_monitor_activity_log_alert ?description ?enabled ?id
           ?location ?tags ~action ?timeouts ~name
           ~resource_group_name ~scopes ~criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?location ?tags
    ?(action = []) ?timeouts ~name ~resource_group_name ~scopes
    ~criteria __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?location ?tags ~action ?timeouts
      ~name ~resource_group_name ~scopes ~criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
