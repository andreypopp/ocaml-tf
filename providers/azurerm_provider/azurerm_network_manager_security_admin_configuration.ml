(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_security_admin_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_security_admin_configuration__timeouts *)

type azurerm_network_manager_security_admin_configuration = {
  apply_on_network_intent_policy_based_services : string list option;
      [@option]
      (** apply_on_network_intent_policy_based_services *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  network_manager_id : string;  (** network_manager_id *)
  timeouts :
    azurerm_network_manager_security_admin_configuration__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_security_admin_configuration *)

let azurerm_network_manager_security_admin_configuration
    ?apply_on_network_intent_policy_based_services ?description
    ?timeouts ~name ~network_manager_id __resource_id =
  let __resource_type =
    "azurerm_network_manager_security_admin_configuration"
  in
  let __resource =
    {
      apply_on_network_intent_policy_based_services;
      description;
      name;
      network_manager_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_security_admin_configuration
       __resource);
  ()
