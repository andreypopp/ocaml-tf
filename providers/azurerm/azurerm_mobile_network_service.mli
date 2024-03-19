(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type pcc_rule__qos_policy__guaranteed_bit_rate

val pcc_rule__qos_policy__guaranteed_bit_rate :
  downlink:string prop ->
  uplink:string prop ->
  unit ->
  pcc_rule__qos_policy__guaranteed_bit_rate

type pcc_rule__qos_policy__maximum_bit_rate

val pcc_rule__qos_policy__maximum_bit_rate :
  downlink:string prop ->
  uplink:string prop ->
  unit ->
  pcc_rule__qos_policy__maximum_bit_rate

type pcc_rule__qos_policy

val pcc_rule__qos_policy :
  ?allocation_and_retention_priority_level:float prop ->
  ?preemption_capability:string prop ->
  ?preemption_vulnerability:string prop ->
  qos_indicator:float prop ->
  guaranteed_bit_rate:pcc_rule__qos_policy__guaranteed_bit_rate list ->
  maximum_bit_rate:pcc_rule__qos_policy__maximum_bit_rate list ->
  unit ->
  pcc_rule__qos_policy

type pcc_rule__service_data_flow_template

val pcc_rule__service_data_flow_template :
  ?ports:string prop list ->
  direction:string prop ->
  name:string prop ->
  protocol:string prop list ->
  remote_ip_list:string prop list ->
  unit ->
  pcc_rule__service_data_flow_template

type pcc_rule

val pcc_rule :
  ?traffic_control_enabled:bool prop ->
  name:string prop ->
  precedence:float prop ->
  qos_policy:pcc_rule__qos_policy list ->
  service_data_flow_template:
    pcc_rule__service_data_flow_template list ->
  unit ->
  pcc_rule

type service_qos_policy__maximum_bit_rate

val service_qos_policy__maximum_bit_rate :
  downlink:string prop ->
  uplink:string prop ->
  unit ->
  service_qos_policy__maximum_bit_rate

type service_qos_policy

val service_qos_policy :
  ?allocation_and_retention_priority_level:float prop ->
  ?preemption_capability:string prop ->
  ?preemption_vulnerability:string prop ->
  ?qos_indicator:float prop ->
  maximum_bit_rate:service_qos_policy__maximum_bit_rate list ->
  unit ->
  service_qos_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mobile_network_service

val azurerm_mobile_network_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  service_precedence:float prop ->
  pcc_rule:pcc_rule list ->
  service_qos_policy:service_qos_policy list ->
  unit ->
  azurerm_mobile_network_service

val yojson_of_azurerm_mobile_network_service :
  azurerm_mobile_network_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  service_precedence : float prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  service_precedence:float prop ->
  pcc_rule:pcc_rule list ->
  service_qos_policy:service_qos_policy list ->
  string ->
  t
