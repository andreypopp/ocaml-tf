(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_desktop_scaling_plan__host_pool = {
  hostpool_id : string prop;  (** hostpool_id *)
  scaling_plan_enabled : bool prop;  (** scaling_plan_enabled *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_scaling_plan__host_pool *)

type azurerm_virtual_desktop_scaling_plan__schedule = {
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
(** azurerm_virtual_desktop_scaling_plan__schedule *)

type azurerm_virtual_desktop_scaling_plan__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_scaling_plan__timeouts *)

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
  host_pool : azurerm_virtual_desktop_scaling_plan__host_pool list;
  schedule : azurerm_virtual_desktop_scaling_plan__schedule list;
  timeouts : azurerm_virtual_desktop_scaling_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_scaling_plan *)

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

let azurerm_virtual_desktop_scaling_plan ?description ?exclusion_tag
    ?friendly_name ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~time_zone ~host_pool ~schedule
    __resource_id =
  let __resource_type = "azurerm_virtual_desktop_scaling_plan" in
  let __resource =
    ({
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
      : azurerm_virtual_desktop_scaling_plan)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_scaling_plan __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       exclusion_tag =
         Prop.computed __resource_type __resource_id "exclusion_tag";
       friendly_name =
         Prop.computed __resource_type __resource_id "friendly_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
     }
      : t)
  in
  __resource_attributes
