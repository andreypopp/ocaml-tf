(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pcc_rule__service_data_flow_template = {
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ports *)
  protocol : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** protocol *)
  remote_ip_list : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** remote_ip_list *)
}

type pcc_rule__qos_policy__maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}

type pcc_rule__qos_policy__guaranteed_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}

type pcc_rule__qos_policy = {
  allocation_and_retention_priority_level : float prop;
      (** allocation_and_retention_priority_level *)
  guaranteed_bit_rate :
    pcc_rule__qos_policy__guaranteed_bit_rate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** guaranteed_bit_rate *)
  maximum_bit_rate : pcc_rule__qos_policy__maximum_bit_rate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** maximum_bit_rate *)
  preemption_capability : string prop;  (** preemption_capability *)
  preemption_vulnerability : string prop;
      (** preemption_vulnerability *)
  qos_indicator : float prop;  (** qos_indicator *)
}

type pcc_rule = {
  name : string prop;  (** name *)
  precedence : float prop;  (** precedence *)
  qos_policy : pcc_rule__qos_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** qos_policy *)
  service_data_flow_template :
    pcc_rule__service_data_flow_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** service_data_flow_template *)
  traffic_control_enabled : bool prop;  (** traffic_control_enabled *)
}

type service_qos_policy__maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}

type service_qos_policy = {
  allocation_and_retention_priority_level : float prop;
      (** allocation_and_retention_priority_level *)
  maximum_bit_rate : service_qos_policy__maximum_bit_rate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** maximum_bit_rate *)
  preemption_capability : string prop;  (** preemption_capability *)
  preemption_vulnerability : string prop;
      (** preemption_vulnerability *)
  qos_indicator : float prop;  (** qos_indicator *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mobile_network_service

val azurerm_mobile_network_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mobile_network_service

val yojson_of_azurerm_mobile_network_service :
  azurerm_mobile_network_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  pcc_rule : pcc_rule list prop;
  service_precedence : float prop;
  service_qos_policy : service_qos_policy list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
