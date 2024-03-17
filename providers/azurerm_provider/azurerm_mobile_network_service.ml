(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_service__pcc_rule__qos_policy__guaranteed_bit_rate = {
  downlink : string;  (** downlink *)
  uplink : string;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__pcc_rule__qos_policy__guaranteed_bit_rate *)

type azurerm_mobile_network_service__pcc_rule__qos_policy__maximum_bit_rate = {
  downlink : string;  (** downlink *)
  uplink : string;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__pcc_rule__qos_policy__maximum_bit_rate *)

type azurerm_mobile_network_service__pcc_rule__qos_policy = {
  allocation_and_retention_priority_level : float option; [@option]
      (** allocation_and_retention_priority_level *)
  preemption_capability : string option; [@option]
      (** preemption_capability *)
  preemption_vulnerability : string option; [@option]
      (** preemption_vulnerability *)
  qos_indicator : float;  (** qos_indicator *)
  guaranteed_bit_rate :
    azurerm_mobile_network_service__pcc_rule__qos_policy__guaranteed_bit_rate
    list;
  maximum_bit_rate :
    azurerm_mobile_network_service__pcc_rule__qos_policy__maximum_bit_rate
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__pcc_rule__qos_policy *)

type azurerm_mobile_network_service__pcc_rule__service_data_flow_template = {
  direction : string;  (** direction *)
  name : string;  (** name *)
  ports : string list option; [@option]  (** ports *)
  protocol : string list;  (** protocol *)
  remote_ip_list : string list;  (** remote_ip_list *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__pcc_rule__service_data_flow_template *)

type azurerm_mobile_network_service__pcc_rule = {
  name : string;  (** name *)
  precedence : float;  (** precedence *)
  traffic_control_enabled : bool option; [@option]
      (** traffic_control_enabled *)
  qos_policy :
    azurerm_mobile_network_service__pcc_rule__qos_policy list;
  service_data_flow_template :
    azurerm_mobile_network_service__pcc_rule__service_data_flow_template
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__pcc_rule *)

type azurerm_mobile_network_service__service_qos_policy__maximum_bit_rate = {
  downlink : string;  (** downlink *)
  uplink : string;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__service_qos_policy__maximum_bit_rate *)

type azurerm_mobile_network_service__service_qos_policy = {
  allocation_and_retention_priority_level : float option; [@option]
      (** allocation_and_retention_priority_level *)
  preemption_capability : string option; [@option]
      (** preemption_capability *)
  preemption_vulnerability : string option; [@option]
      (** preemption_vulnerability *)
  qos_indicator : float option; [@option]  (** qos_indicator *)
  maximum_bit_rate :
    azurerm_mobile_network_service__service_qos_policy__maximum_bit_rate
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__service_qos_policy *)

type azurerm_mobile_network_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__timeouts *)

type azurerm_mobile_network_service = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  mobile_network_id : string;  (** mobile_network_id *)
  name : string;  (** name *)
  service_precedence : float;  (** service_precedence *)
  tags : (string * string) list option; [@option]  (** tags *)
  pcc_rule : azurerm_mobile_network_service__pcc_rule list;
  service_qos_policy :
    azurerm_mobile_network_service__service_qos_policy list;
  timeouts : azurerm_mobile_network_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service *)

let azurerm_mobile_network_service ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name ~service_precedence ~pcc_rule
    ~service_qos_policy __resource_id =
  let __resource_type = "azurerm_mobile_network_service" in
  let __resource =
    {
      id;
      location;
      mobile_network_id;
      name;
      service_precedence;
      tags;
      pcc_rule;
      service_qos_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_service __resource);
  ()
