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
  enabled : bool prop;
  schedule : scheduled_agent_updates__schedule list;
  timezone : string prop;
  use_session_host_timezone : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduled_agent_updates) -> ()

let yojson_of_scheduled_agent_updates =
  (function
   | {
       enabled = v_enabled;
       schedule = v_schedule;
       timezone = v_timezone;
       use_session_host_timezone = v_use_session_host_timezone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_session_host_timezone
         in
         ("use_session_host_timezone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timezone in
         ("timezone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_scheduled_agent_updates__schedule
             v_schedule
         in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : scheduled_agent_updates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduled_agent_updates

[@@@deriving.end]

type azurerm_virtual_desktop_host_pool = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_desktop_host_pool) -> ()

let yojson_of_azurerm_virtual_desktop_host_pool =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
       `Assoc bnds
    : azurerm_virtual_desktop_host_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_desktop_host_pool

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_virtual_desktop_host_pool ?id ?timeouts ~name
    ~resource_group_name () : azurerm_virtual_desktop_host_pool =
  { id; name; resource_group_name; timeouts }

type t = {
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
  scheduled_agent_updates : scheduled_agent_updates list prop;
  start_vm_on_connect : bool prop;
  tags : (string * string) list prop;
  type_ : string prop;
  validate_environment : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_desktop_host_pool" in
  let __attrs =
    ({
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
       scheduled_agent_updates =
         Prop.computed __type __id "scheduled_agent_updates";
       start_vm_on_connect =
         Prop.computed __type __id "start_vm_on_connect";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       validate_environment =
         Prop.computed __type __id "validate_environment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_host_pool
        (azurerm_virtual_desktop_host_pool ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
