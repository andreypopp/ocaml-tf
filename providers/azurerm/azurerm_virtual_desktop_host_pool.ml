(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scheduled_agent_updates__schedule = {
  day_of_week : string prop;
  hour_of_day : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduled_agent_updates__schedule) -> ()

let yojson_of_scheduled_agent_updates__schedule =
  (function
   | { day_of_week = v_day_of_week; hour_of_day = v_hour_of_day } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour_of_day in
         ("hour_of_day", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : scheduled_agent_updates__schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduled_agent_updates__schedule

[@@@deriving.end]

type scheduled_agent_updates = {
  enabled : bool prop option; [@option]
  timezone : string prop option; [@option]
  use_session_host_timezone : bool prop option; [@option]
  schedule : scheduled_agent_updates__schedule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduled_agent_updates) -> ()

let yojson_of_scheduled_agent_updates =
  (function
   | {
       enabled = v_enabled;
       timezone = v_timezone;
       use_session_host_timezone = v_use_session_host_timezone;
       schedule = v_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_scheduled_agent_updates__schedule
             v_schedule
         in
         ("schedule", arg) :: bnds
       in
       let bnds =
         match v_use_session_host_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_session_host_timezone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
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
       `Assoc bnds
    : scheduled_agent_updates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduled_agent_updates

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

type azurerm_virtual_desktop_host_pool = {
  custom_rdp_properties : string prop option; [@option]
  description : string prop option; [@option]
  friendly_name : string prop option; [@option]
  id : string prop option; [@option]
  load_balancer_type : string prop;
  location : string prop;
  maximum_sessions_allowed : float prop option; [@option]
  name : string prop;
  personal_desktop_assignment_type : string prop option; [@option]
  preferred_app_group_type : string prop option; [@option]
  resource_group_name : string prop;
  start_vm_on_connect : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  validate_environment : bool prop option; [@option]
  vm_template : string prop option; [@option]
  scheduled_agent_updates : scheduled_agent_updates list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_desktop_host_pool) -> ()

let yojson_of_azurerm_virtual_desktop_host_pool =
  (function
   | {
       custom_rdp_properties = v_custom_rdp_properties;
       description = v_description;
       friendly_name = v_friendly_name;
       id = v_id;
       load_balancer_type = v_load_balancer_type;
       location = v_location;
       maximum_sessions_allowed = v_maximum_sessions_allowed;
       name = v_name;
       personal_desktop_assignment_type =
         v_personal_desktop_assignment_type;
       preferred_app_group_type = v_preferred_app_group_type;
       resource_group_name = v_resource_group_name;
       start_vm_on_connect = v_start_vm_on_connect;
       tags = v_tags;
       type_ = v_type_;
       validate_environment = v_validate_environment;
       vm_template = v_vm_template;
       scheduled_agent_updates = v_scheduled_agent_updates;
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
           yojson_of_list yojson_of_scheduled_agent_updates
             v_scheduled_agent_updates
         in
         ("scheduled_agent_updates", arg) :: bnds
       in
       let bnds =
         match v_vm_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vm_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_validate_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_environment", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_vm_on_connect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "start_vm_on_connect", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_preferred_app_group_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_app_group_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_personal_desktop_assignment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "personal_desktop_assignment_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_maximum_sessions_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_sessions_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_type
         in
         ("load_balancer_type", arg) :: bnds
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
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
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
         match v_custom_rdp_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_rdp_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_desktop_host_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_desktop_host_pool

[@@@deriving.end]

let scheduled_agent_updates__schedule ~day_of_week ~hour_of_day () :
    scheduled_agent_updates__schedule =
  { day_of_week; hour_of_day }

let scheduled_agent_updates ?enabled ?timezone
    ?use_session_host_timezone ?(schedule = []) () :
    scheduled_agent_updates =
  { enabled; timezone; use_session_host_timezone; schedule }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_host_pool ?custom_rdp_properties
    ?description ?friendly_name ?id ?maximum_sessions_allowed
    ?personal_desktop_assignment_type ?preferred_app_group_type
    ?start_vm_on_connect ?tags ?validate_environment ?vm_template
    ?(scheduled_agent_updates = []) ?timeouts ~load_balancer_type
    ~location ~name ~resource_group_name ~type_ () :
    azurerm_virtual_desktop_host_pool =
  {
    custom_rdp_properties;
    description;
    friendly_name;
    id;
    load_balancer_type;
    location;
    maximum_sessions_allowed;
    name;
    personal_desktop_assignment_type;
    preferred_app_group_type;
    resource_group_name;
    start_vm_on_connect;
    tags;
    type_;
    validate_environment;
    vm_template;
    scheduled_agent_updates;
    timeouts;
  }

type t = {
  tf_name : string;
  custom_rdp_properties : string prop;
  description : string prop;
  friendly_name : string prop;
  id : string prop;
  load_balancer_type : string prop;
  location : string prop;
  maximum_sessions_allowed : float prop;
  name : string prop;
  personal_desktop_assignment_type : string prop;
  preferred_app_group_type : string prop;
  resource_group_name : string prop;
  start_vm_on_connect : bool prop;
  tags : (string * string) list prop;
  type_ : string prop;
  validate_environment : bool prop;
  vm_template : string prop;
}

let make ?custom_rdp_properties ?description ?friendly_name ?id
    ?maximum_sessions_allowed ?personal_desktop_assignment_type
    ?preferred_app_group_type ?start_vm_on_connect ?tags
    ?validate_environment ?vm_template
    ?(scheduled_agent_updates = []) ?timeouts ~load_balancer_type
    ~location ~name ~resource_group_name ~type_ __id =
  let __type = "azurerm_virtual_desktop_host_pool" in
  let __attrs =
    ({
       tf_name = __id;
       custom_rdp_properties =
         Prop.computed __type __id "custom_rdp_properties";
       description = Prop.computed __type __id "description";
       friendly_name = Prop.computed __type __id "friendly_name";
       id = Prop.computed __type __id "id";
       load_balancer_type =
         Prop.computed __type __id "load_balancer_type";
       location = Prop.computed __type __id "location";
       maximum_sessions_allowed =
         Prop.computed __type __id "maximum_sessions_allowed";
       name = Prop.computed __type __id "name";
       personal_desktop_assignment_type =
         Prop.computed __type __id "personal_desktop_assignment_type";
       preferred_app_group_type =
         Prop.computed __type __id "preferred_app_group_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       start_vm_on_connect =
         Prop.computed __type __id "start_vm_on_connect";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       validate_environment =
         Prop.computed __type __id "validate_environment";
       vm_template = Prop.computed __type __id "vm_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_host_pool
        (azurerm_virtual_desktop_host_pool ?custom_rdp_properties
           ?description ?friendly_name ?id ?maximum_sessions_allowed
           ?personal_desktop_assignment_type
           ?preferred_app_group_type ?start_vm_on_connect ?tags
           ?validate_environment ?vm_template
           ~scheduled_agent_updates ?timeouts ~load_balancer_type
           ~location ~name ~resource_group_name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_rdp_properties ?description
    ?friendly_name ?id ?maximum_sessions_allowed
    ?personal_desktop_assignment_type ?preferred_app_group_type
    ?start_vm_on_connect ?tags ?validate_environment ?vm_template
    ?(scheduled_agent_updates = []) ?timeouts ~load_balancer_type
    ~location ~name ~resource_group_name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?custom_rdp_properties ?description ?friendly_name ?id
      ?maximum_sessions_allowed ?personal_desktop_assignment_type
      ?preferred_app_group_type ?start_vm_on_connect ?tags
      ?validate_environment ?vm_template ~scheduled_agent_updates
      ?timeouts ~load_balancer_type ~location ~name
      ~resource_group_name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
