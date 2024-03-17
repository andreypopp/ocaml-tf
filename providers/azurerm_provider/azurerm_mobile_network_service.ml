(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_service__pcc_rule__qos_policy__guaranteed_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__pcc_rule__qos_policy__guaranteed_bit_rate *)

type azurerm_mobile_network_service__pcc_rule__qos_policy__maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__pcc_rule__qos_policy__maximum_bit_rate *)

type azurerm_mobile_network_service__pcc_rule__qos_policy = {
  allocation_and_retention_priority_level : float prop option;
      [@option]
      (** allocation_and_retention_priority_level *)
  preemption_capability : string prop option; [@option]
      (** preemption_capability *)
  preemption_vulnerability : string prop option; [@option]
      (** preemption_vulnerability *)
  qos_indicator : float prop;  (** qos_indicator *)
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
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  ports : string prop list option; [@option]  (** ports *)
  protocol : string prop list;  (** protocol *)
  remote_ip_list : string prop list;  (** remote_ip_list *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__pcc_rule__service_data_flow_template *)

type azurerm_mobile_network_service__pcc_rule = {
  name : string prop;  (** name *)
  precedence : float prop;  (** precedence *)
  traffic_control_enabled : bool prop option; [@option]
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
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__service_qos_policy__maximum_bit_rate *)

type azurerm_mobile_network_service__service_qos_policy = {
  allocation_and_retention_priority_level : float prop option;
      [@option]
      (** allocation_and_retention_priority_level *)
  preemption_capability : string prop option; [@option]
      (** preemption_capability *)
  preemption_vulnerability : string prop option; [@option]
      (** preemption_vulnerability *)
  qos_indicator : float prop option; [@option]  (** qos_indicator *)
  maximum_bit_rate :
    azurerm_mobile_network_service__service_qos_policy__maximum_bit_rate
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__service_qos_policy *)

type azurerm_mobile_network_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service__timeouts *)

type azurerm_mobile_network_service = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_id : string prop;  (** mobile_network_id *)
  name : string prop;  (** name *)
  service_precedence : float prop;  (** service_precedence *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
