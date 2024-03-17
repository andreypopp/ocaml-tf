(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iotcentral_application_network_rule_set__ip_rule = {
  ip_mask : string prop;  (** ip_mask *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application_network_rule_set__ip_rule *)

type azurerm_iotcentral_application_network_rule_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application_network_rule_set__timeouts *)

type azurerm_iotcentral_application_network_rule_set = {
  apply_to_device : bool prop option; [@option]
      (** apply_to_device *)
  default_action : string prop option; [@option]
      (** default_action *)
  id : string prop option; [@option]  (** id *)
  iotcentral_application_id : string prop;
      (** iotcentral_application_id *)
  ip_rule :
    azurerm_iotcentral_application_network_rule_set__ip_rule list;
  timeouts :
    azurerm_iotcentral_application_network_rule_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application_network_rule_set *)

let azurerm_iotcentral_application_network_rule_set ?apply_to_device
    ?default_action ?id ?timeouts ~iotcentral_application_id ~ip_rule
    __resource_id =
  let __resource_type =
    "azurerm_iotcentral_application_network_rule_set"
  in
  let __resource =
    {
      apply_to_device;
      default_action;
      id;
      iotcentral_application_id;
      ip_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iotcentral_application_network_rule_set
       __resource);
  ()
