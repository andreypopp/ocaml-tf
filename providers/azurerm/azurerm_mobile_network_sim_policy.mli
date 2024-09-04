(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type slice__data_network__session_aggregate_maximum_bit_rate

val slice__data_network__session_aggregate_maximum_bit_rate :
  downlink:string prop ->
  uplink:string prop ->
  unit ->
  slice__data_network__session_aggregate_maximum_bit_rate

type slice__data_network

val slice__data_network :
  ?additional_allowed_session_types:string prop list ->
  ?allocation_and_retention_priority_level:float prop ->
  ?default_session_type:string prop ->
  ?max_buffered_packets:float prop ->
  ?preemption_capability:string prop ->
  ?preemption_vulnerability:string prop ->
  allowed_services_ids:string prop list ->
  data_network_id:string prop ->
  qos_indicator:float prop ->
  session_aggregate_maximum_bit_rate:
    slice__data_network__session_aggregate_maximum_bit_rate list ->
  unit ->
  slice__data_network

type slice

val slice :
  default_data_network_id:string prop ->
  slice_id:string prop ->
  data_network:slice__data_network list ->
  unit ->
  slice

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user_equipment_aggregate_maximum_bit_rate

val user_equipment_aggregate_maximum_bit_rate :
  downlink:string prop ->
  uplink:string prop ->
  unit ->
  user_equipment_aggregate_maximum_bit_rate

type azurerm_mobile_network_sim_policy

val azurerm_mobile_network_sim_policy :
  ?id:string prop ->
  ?rat_frequency_selection_priority_index:float prop ->
  ?registration_timer_in_seconds:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  default_slice_id:string prop ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  slice:slice list ->
  user_equipment_aggregate_maximum_bit_rate:
    user_equipment_aggregate_maximum_bit_rate list ->
  unit ->
  azurerm_mobile_network_sim_policy

val yojson_of_azurerm_mobile_network_sim_policy :
  azurerm_mobile_network_sim_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_slice_id : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  rat_frequency_selection_priority_index : float prop;
  registration_timer_in_seconds : float prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?rat_frequency_selection_priority_index:float prop ->
  ?registration_timer_in_seconds:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  default_slice_id:string prop ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  slice:slice list ->
  user_equipment_aggregate_maximum_bit_rate:
    user_equipment_aggregate_maximum_bit_rate list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?rat_frequency_selection_priority_index:float prop ->
  ?registration_timer_in_seconds:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  default_slice_id:string prop ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  slice:slice list ->
  user_equipment_aggregate_maximum_bit_rate:
    user_equipment_aggregate_maximum_bit_rate list ->
  string ->
  t Tf_core.resource
