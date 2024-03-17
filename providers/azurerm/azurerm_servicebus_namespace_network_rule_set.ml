(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_servicebus_namespace_network_rule_set__network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_network_rule_set__network_rules *)

type azurerm_servicebus_namespace_network_rule_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_network_rule_set__timeouts *)

type azurerm_servicebus_namespace_network_rule_set = {
  default_action : string prop option; [@option]
      (** default_action *)
  id : string prop option; [@option]  (** id *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  namespace_id : string prop;  (** namespace_id *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  trusted_services_allowed : bool prop option; [@option]
      (** trusted_services_allowed *)
  network_rules :
    azurerm_servicebus_namespace_network_rule_set__network_rules list;
  timeouts :
    azurerm_servicebus_namespace_network_rule_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_network_rule_set *)

type t = {
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  namespace_id : string prop;
  public_network_access_enabled : bool prop;
  trusted_services_allowed : bool prop;
}

let azurerm_servicebus_namespace_network_rule_set ?default_action ?id
    ?ip_rules ?public_network_access_enabled
    ?trusted_services_allowed ?timeouts ~namespace_id ~network_rules
    __resource_id =
  let __resource_type =
    "azurerm_servicebus_namespace_network_rule_set"
  in
  let __resource =
    ({
       default_action;
       id;
       ip_rules;
       namespace_id;
       public_network_access_enabled;
       trusted_services_allowed;
       network_rules;
       timeouts;
     }
      : azurerm_servicebus_namespace_network_rule_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_namespace_network_rule_set
       __resource);
  let __resource_attributes =
    ({
       default_action =
         Prop.computed __resource_type __resource_id "default_action";
       id = Prop.computed __resource_type __resource_id "id";
       ip_rules =
         Prop.computed __resource_type __resource_id "ip_rules";
       namespace_id =
         Prop.computed __resource_type __resource_id "namespace_id";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       trusted_services_allowed =
         Prop.computed __resource_type __resource_id
           "trusted_services_allowed";
     }
      : t)
  in
  __resource_attributes
