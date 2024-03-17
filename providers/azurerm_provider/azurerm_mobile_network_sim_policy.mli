(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_sim_policy__slice__data_network__session_aggregate_maximum_bit_rate

type azurerm_mobile_network_sim_policy__slice__data_network
type azurerm_mobile_network_sim_policy__slice
type azurerm_mobile_network_sim_policy__timeouts

type azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate

type azurerm_mobile_network_sim_policy

val azurerm_mobile_network_sim_policy :
  ?rat_frequency_selection_priority_index:float ->
  ?registration_timer_in_seconds:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mobile_network_sim_policy__timeouts ->
  default_slice_id:string ->
  location:string ->
  mobile_network_id:string ->
  name:string ->
  slice:azurerm_mobile_network_sim_policy__slice list ->
  user_equipment_aggregate_maximum_bit_rate:
    azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate
    list ->
  string ->
  unit
