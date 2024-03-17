(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_sim_policy__slice__data_network__session_aggregate_maximum_bit_rate

type azurerm_mobile_network_sim_policy__slice__data_network
type azurerm_mobile_network_sim_policy__slice
type azurerm_mobile_network_sim_policy__timeouts

type azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate

type azurerm_mobile_network_sim_policy

type t = private {
  default_slice_id : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  rat_frequency_selection_priority_index : float prop;
  registration_timer_in_seconds : float prop;
  tags : (string * string) list prop;
}

val azurerm_mobile_network_sim_policy :
  ?id:string prop ->
  ?rat_frequency_selection_priority_index:float prop ->
  ?registration_timer_in_seconds:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mobile_network_sim_policy__timeouts ->
  default_slice_id:string prop ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  slice:azurerm_mobile_network_sim_policy__slice list ->
  user_equipment_aggregate_maximum_bit_rate:
    azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate
    list ->
  string ->
  t
