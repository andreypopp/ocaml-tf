(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iotcentral_application_network_rule_set__ip_rule = {
  ip_mask : string;  (** ip_mask *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application_network_rule_set__ip_rule *)

type azurerm_iotcentral_application_network_rule_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application_network_rule_set__timeouts *)

type azurerm_iotcentral_application_network_rule_set = {
  apply_to_device : bool option; [@option]  (** apply_to_device *)
  default_action : string option; [@option]  (** default_action *)
  iotcentral_application_id : string;
      (** iotcentral_application_id *)
  ip_rule :
    azurerm_iotcentral_application_network_rule_set__ip_rule list;
  timeouts :
    azurerm_iotcentral_application_network_rule_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application_network_rule_set *)

let azurerm_iotcentral_application_network_rule_set ?apply_to_device
    ?default_action ?timeouts ~iotcentral_application_id ~ip_rule
    __resource_id =
  let __resource_type =
    "azurerm_iotcentral_application_network_rule_set"
  in
  let __resource =
    {
      apply_to_device;
      default_action;
      iotcentral_application_id;
      ip_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iotcentral_application_network_rule_set
       __resource);
  ()
