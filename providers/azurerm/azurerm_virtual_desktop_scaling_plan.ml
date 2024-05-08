(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type host_pool = {
  hostpool_id : string prop;
  scaling_plan_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : host_pool) -> ()

let yojson_of_host_pool =
  (function
   | {
       hostpool_id = v_hostpool_id;
       scaling_plan_enabled = v_scaling_plan_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_scaling_plan_enabled
         in
         ("scaling_plan_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostpool_id in
         ("hostpool_id", arg) :: bnds
       in
       `Assoc bnds
    : host_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_host_pool

[@@@deriving.end]

type schedule = {
  days_of_week : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
  off_peak_load_balancing_algorithm : string prop;
  off_peak_start_time : string prop;
  peak_load_balancing_algorithm : string prop;
  peak_start_time : string prop;
  ramp_down_capacity_threshold_percent : float prop;
  ramp_down_force_logoff_users : bool prop;
  ramp_down_load_balancing_algorithm : string prop;
  ramp_down_minimum_hosts_percent : float prop;
  ramp_down_notification_message : string prop;
  ramp_down_start_time : string prop;
  ramp_down_stop_hosts_when : string prop;
  ramp_down_wait_time_minutes : float prop;
  ramp_up_capacity_threshold_percent : float prop option; [@option]
  ramp_up_load_balancing_algorithm : string prop;
  ramp_up_minimum_hosts_percent : float prop option; [@option]
  ramp_up_start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       days_of_week = v_days_of_week;
       name = v_name;
       off_peak_load_balancing_algorithm =
         v_off_peak_load_balancing_algorithm;
       off_peak_start_time = v_off_peak_start_time;
       peak_load_balancing_algorithm =
         v_peak_load_balancing_algorithm;
       peak_start_time = v_peak_start_time;
       ramp_down_capacity_threshold_percent =
         v_ramp_down_capacity_threshold_percent;
       ramp_down_force_logoff_users = v_ramp_down_force_logoff_users;
       ramp_down_load_balancing_algorithm =
         v_ramp_down_load_balancing_algorithm;
       ramp_down_minimum_hosts_percent =
         v_ramp_down_minimum_hosts_percent;
       ramp_down_notification_message =
         v_ramp_down_notification_message;
       ramp_down_start_time = v_ramp_down_start_time;
       ramp_down_stop_hosts_when = v_ramp_down_stop_hosts_when;
       ramp_down_wait_time_minutes = v_ramp_down_wait_time_minutes;
       ramp_up_capacity_threshold_percent =
         v_ramp_up_capacity_threshold_percent;
       ramp_up_load_balancing_algorithm =
         v_ramp_up_load_balancing_algorithm;
       ramp_up_minimum_hosts_percent =
         v_ramp_up_minimum_hosts_percent;
       ramp_up_start_time = v_ramp_up_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ramp_up_start_time
         in
         ("ramp_up_start_time", arg) :: bnds
       in
       let bnds =
         match v_ramp_up_minimum_hosts_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ramp_up_minimum_hosts_percent", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ramp_up_load_balancing_algorithm
         in
         ("ramp_up_load_balancing_algorithm", arg) :: bnds
       in
       let bnds =
         match v_ramp_up_capacity_threshold_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ramp_up_capacity_threshold_percent", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_ramp_down_wait_time_minutes
         in
         ("ramp_down_wait_time_minutes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ramp_down_stop_hosts_when
         in
         ("ramp_down_stop_hosts_when", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ramp_down_start_time
         in
         ("ramp_down_start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ramp_down_notification_message
         in
         ("ramp_down_notification_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_ramp_down_minimum_hosts_percent
         in
         ("ramp_down_minimum_hosts_percent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ramp_down_load_balancing_algorithm
         in
         ("ramp_down_load_balancing_algorithm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_ramp_down_force_logoff_users
         in
         ("ramp_down_force_logoff_users", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_ramp_down_capacity_threshold_percent
         in
         ("ramp_down_capacity_threshold_percent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_peak_start_time
         in
         ("peak_start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_peak_load_balancing_algorithm
         in
         ("peak_load_balancing_algorithm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_off_peak_start_time
         in
         ("off_peak_start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_off_peak_load_balancing_algorithm
         in
         ("off_peak_load_balancing_algorithm", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_days_of_week then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_days_of_week
           in
           let bnd = "days_of_week", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

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

type azurerm_virtual_desktop_scaling_plan = {
  description : string prop option; [@option]
  exclusion_tag : string prop option; [@option]
  friendly_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  time_zone : string prop;
  host_pool : host_pool list;
      [@default []] [@yojson_drop_default ( = )]
  schedule : schedule list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_desktop_scaling_plan) -> ()

let yojson_of_azurerm_virtual_desktop_scaling_plan =
  (function
   | {
       description = v_description;
       exclusion_tag = v_exclusion_tag;
       friendly_name = v_friendly_name;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       time_zone = v_time_zone;
       host_pool = v_host_pool;
       schedule = v_schedule;
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
         if [] = v_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule) v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_host_pool then bnds
         else
           let arg =
             (yojson_of_list yojson_of_host_pool) v_host_pool
           in
           let bnd = "host_pool", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
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
         match v_exclusion_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exclusion_tag", arg in
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
    : azurerm_virtual_desktop_scaling_plan ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_desktop_scaling_plan

[@@@deriving.end]

let host_pool ~hostpool_id ~scaling_plan_enabled () : host_pool =
  { hostpool_id; scaling_plan_enabled }

let schedule ?ramp_up_capacity_threshold_percent
    ?ramp_up_minimum_hosts_percent ~days_of_week ~name
    ~off_peak_load_balancing_algorithm ~off_peak_start_time
    ~peak_load_balancing_algorithm ~peak_start_time
    ~ramp_down_capacity_threshold_percent
    ~ramp_down_force_logoff_users ~ramp_down_load_balancing_algorithm
    ~ramp_down_minimum_hosts_percent ~ramp_down_notification_message
    ~ramp_down_start_time ~ramp_down_stop_hosts_when
    ~ramp_down_wait_time_minutes ~ramp_up_load_balancing_algorithm
    ~ramp_up_start_time () : schedule =
  {
    days_of_week;
    name;
    off_peak_load_balancing_algorithm;
    off_peak_start_time;
    peak_load_balancing_algorithm;
    peak_start_time;
    ramp_down_capacity_threshold_percent;
    ramp_down_force_logoff_users;
    ramp_down_load_balancing_algorithm;
    ramp_down_minimum_hosts_percent;
    ramp_down_notification_message;
    ramp_down_start_time;
    ramp_down_stop_hosts_when;
    ramp_down_wait_time_minutes;
    ramp_up_capacity_threshold_percent;
    ramp_up_load_balancing_algorithm;
    ramp_up_minimum_hosts_percent;
    ramp_up_start_time;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_scaling_plan ?description ?exclusion_tag
    ?friendly_name ?id ?tags ?(host_pool = []) ?timeouts ~location
    ~name ~resource_group_name ~time_zone ~schedule () :
    azurerm_virtual_desktop_scaling_plan =
  {
    description;
    exclusion_tag;
    friendly_name;
    id;
    location;
    name;
    resource_group_name;
    tags;
    time_zone;
    host_pool;
    schedule;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  exclusion_tag : string prop;
  friendly_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  time_zone : string prop;
}

let make ?description ?exclusion_tag ?friendly_name ?id ?tags
    ?(host_pool = []) ?timeouts ~location ~name ~resource_group_name
    ~time_zone ~schedule __id =
  let __type = "azurerm_virtual_desktop_scaling_plan" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       exclusion_tag = Prop.computed __type __id "exclusion_tag";
       friendly_name = Prop.computed __type __id "friendly_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_scaling_plan
        (azurerm_virtual_desktop_scaling_plan ?description
           ?exclusion_tag ?friendly_name ?id ?tags ~host_pool
           ?timeouts ~location ~name ~resource_group_name ~time_zone
           ~schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?exclusion_tag ?friendly_name
    ?id ?tags ?(host_pool = []) ?timeouts ~location ~name
    ~resource_group_name ~time_zone ~schedule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?exclusion_tag ?friendly_name ?id ?tags
      ~host_pool ?timeouts ~location ~name ~resource_group_name
      ~time_zone ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
