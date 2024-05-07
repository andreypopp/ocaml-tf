(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type host_pool

val host_pool :
  hostpool_id:string prop ->
  scaling_plan_enabled:bool prop ->
  unit ->
  host_pool

type schedule

val schedule :
  ?ramp_up_capacity_threshold_percent:float prop ->
  ?ramp_up_minimum_hosts_percent:float prop ->
  days_of_week:string prop list ->
  name:string prop ->
  off_peak_load_balancing_algorithm:string prop ->
  off_peak_start_time:string prop ->
  peak_load_balancing_algorithm:string prop ->
  peak_start_time:string prop ->
  ramp_down_capacity_threshold_percent:float prop ->
  ramp_down_force_logoff_users:bool prop ->
  ramp_down_load_balancing_algorithm:string prop ->
  ramp_down_minimum_hosts_percent:float prop ->
  ramp_down_notification_message:string prop ->
  ramp_down_start_time:string prop ->
  ramp_down_stop_hosts_when:string prop ->
  ramp_down_wait_time_minutes:float prop ->
  ramp_up_load_balancing_algorithm:string prop ->
  ramp_up_start_time:string prop ->
  unit ->
  schedule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_desktop_scaling_plan

val azurerm_virtual_desktop_scaling_plan :
  ?description:string prop ->
  ?exclusion_tag:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?host_pool:host_pool list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  time_zone:string prop ->
  schedule:schedule list ->
  unit ->
  azurerm_virtual_desktop_scaling_plan

val yojson_of_azurerm_virtual_desktop_scaling_plan :
  azurerm_virtual_desktop_scaling_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?exclusion_tag:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?host_pool:host_pool list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  time_zone:string prop ->
  schedule:schedule list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?exclusion_tag:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?host_pool:host_pool list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  time_zone:string prop ->
  schedule:schedule list ->
  string ->
  t Tf_core.resource
