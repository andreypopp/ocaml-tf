(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_servicebus_namespace_network_rule_set__network_rules = {
  ignore_missing_vnet_service_endpoint : bool option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_network_rule_set__network_rules *)

type azurerm_servicebus_namespace_network_rule_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_network_rule_set__timeouts *)

type azurerm_servicebus_namespace_network_rule_set = {
  default_action : string option; [@option]  (** default_action *)
  id : string option; [@option]  (** id *)
  ip_rules : string list option; [@option]  (** ip_rules *)
  namespace_id : string;  (** namespace_id *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  trusted_services_allowed : bool option; [@option]
      (** trusted_services_allowed *)
  network_rules :
    azurerm_servicebus_namespace_network_rule_set__network_rules list;
  timeouts :
    azurerm_servicebus_namespace_network_rule_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_network_rule_set *)

let azurerm_servicebus_namespace_network_rule_set ?default_action ?id
    ?ip_rules ?public_network_access_enabled
    ?trusted_services_allowed ?timeouts ~namespace_id ~network_rules
    __resource_id =
  let __resource_type =
    "azurerm_servicebus_namespace_network_rule_set"
  in
  let __resource =
    {
      default_action;
      id;
      ip_rules;
      namespace_id;
      public_network_access_enabled;
      trusted_services_allowed;
      network_rules;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_namespace_network_rule_set
       __resource);
  ()
