(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type static_ip_configuration

val static_ip_configuration :
  ?static_ipv4_address:string prop ->
  attached_data_network_id:string prop ->
  slice_id:string prop ->
  unit ->
  static_ip_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mobile_network_sim

val azurerm_mobile_network_sim :
  ?device_type:string prop ->
  ?id:string prop ->
  ?sim_policy_id:string prop ->
  ?timeouts:timeouts ->
  authentication_key:string prop ->
  integrated_circuit_card_identifier:string prop ->
  international_mobile_subscriber_identity:string prop ->
  mobile_network_sim_group_id:string prop ->
  name:string prop ->
  operator_key_code:string prop ->
  static_ip_configuration:static_ip_configuration list ->
  unit ->
  azurerm_mobile_network_sim

val yojson_of_azurerm_mobile_network_sim :
  azurerm_mobile_network_sim -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authentication_key : string prop;
  device_type : string prop;
  id : string prop;
  integrated_circuit_card_identifier : string prop;
  international_mobile_subscriber_identity : string prop;
  mobile_network_sim_group_id : string prop;
  name : string prop;
  operator_key_code : string prop;
  sim_policy_id : string prop;
  sim_state : string prop;
  vendor_key_fingerprint : string prop;
  vendor_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?device_type:string prop ->
  ?id:string prop ->
  ?sim_policy_id:string prop ->
  ?timeouts:timeouts ->
  authentication_key:string prop ->
  integrated_circuit_card_identifier:string prop ->
  international_mobile_subscriber_identity:string prop ->
  mobile_network_sim_group_id:string prop ->
  name:string prop ->
  operator_key_code:string prop ->
  static_ip_configuration:static_ip_configuration list ->
  string ->
  t
