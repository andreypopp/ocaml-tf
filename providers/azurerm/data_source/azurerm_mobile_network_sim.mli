(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type static_ip_configuration = {
  attached_data_network_id : string prop;
      (** attached_data_network_id *)
  slice_id : string prop;  (** slice_id *)
  static_ipv4_address : string prop;  (** static_ipv4_address *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mobile_network_sim

val azurerm_mobile_network_sim :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_sim_group_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mobile_network_sim

val yojson_of_azurerm_mobile_network_sim :
  azurerm_mobile_network_sim -> json

(** RESOURCE REGISTRATION *)

type t = private {
  device_type : string prop;
  id : string prop;
  integrated_circuit_card_identifier : string prop;
  international_mobile_subscriber_identity : string prop;
  mobile_network_sim_group_id : string prop;
  name : string prop;
  sim_policy_id : string prop;
  sim_state : string prop;
  static_ip_configuration : static_ip_configuration list prop;
  vendor_key_fingerprint : string prop;
  vendor_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_sim_group_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_sim_group_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
