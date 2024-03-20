(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type host_pool = {
  hostpool_id : string prop;  (** hostpool_id *)
  scaling_plan_enabled : bool prop;  (** scaling_plan_enabled *)
}
[@@deriving yojson_of]
(** host_pool *)

type schedule = {
  days_of_week : string prop list;  (** days_of_week *)
  name : string prop;  (** name *)
  off_peak_load_balancing_algorithm : string prop;
      (** off_peak_load_balancing_algorithm *)
  off_peak_start_time : string prop;  (** off_peak_start_time *)
  peak_load_balancing_algorithm : string prop;
      (** peak_load_balancing_algorithm *)
  peak_start_time : string prop;  (** peak_start_time *)
  ramp_down_capacity_threshold_percent : float prop;
      (** ramp_down_capacity_threshold_percent *)
  ramp_down_force_logoff_users : bool prop;
      (** ramp_down_force_logoff_users *)
  ramp_down_load_balancing_algorithm : string prop;
      (** ramp_down_load_balancing_algorithm *)
  ramp_down_minimum_hosts_percent : float prop;
      (** ramp_down_minimum_hosts_percent *)
  ramp_down_notification_message : string prop;
      (** ramp_down_notification_message *)
  ramp_down_start_time : string prop;  (** ramp_down_start_time *)
  ramp_down_stop_hosts_when : string prop;
      (** ramp_down_stop_hosts_when *)
  ramp_down_wait_time_minutes : float prop;
      (** ramp_down_wait_time_minutes *)
  ramp_up_capacity_threshold_percent : float prop option; [@option]
      (** ramp_up_capacity_threshold_percent *)
  ramp_up_load_balancing_algorithm : string prop;
      (** ramp_up_load_balancing_algorithm *)
  ramp_up_minimum_hosts_percent : float prop option; [@option]
      (** ramp_up_minimum_hosts_percent *)
  ramp_up_start_time : string prop;  (** ramp_up_start_time *)
}
[@@deriving yojson_of]
(** schedule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_desktop_scaling_plan = {
  description : string prop option; [@option]  (** description *)
  exclusion_tag : string prop option; [@option]  (** exclusion_tag *)
  friendly_name : string prop option; [@option]  (** friendly_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  time_zone : string prop;  (** time_zone *)
  host_pool : host_pool list;
  schedule : schedule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_scaling_plan *)

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
    ?friendly_name ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~time_zone ~host_pool ~schedule () :
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
    ?timeouts ~location ~name ~resource_group_name ~time_zone
    ~host_pool ~schedule __id =
  let __type = "azurerm_virtual_desktop_scaling_plan" in
  let __attrs =
    ({
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
           ?exclusion_tag ?friendly_name ?id ?tags ?timeouts
           ~location ~name ~resource_group_name ~time_zone ~host_pool
           ~schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?exclusion_tag ?friendly_name
    ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~time_zone ~host_pool ~schedule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?exclusion_tag ?friendly_name ?id ?tags
      ?timeouts ~location ~name ~resource_group_name ~time_zone
      ~host_pool ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
