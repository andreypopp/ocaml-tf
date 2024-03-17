(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_security_admin_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_security_admin_configuration__timeouts *)

type azurerm_network_manager_security_admin_configuration = {
  apply_on_network_intent_policy_based_services :
    string prop list option;
      [@option]
      (** apply_on_network_intent_policy_based_services *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_manager_id : string prop;  (** network_manager_id *)
  timeouts :
    azurerm_network_manager_security_admin_configuration__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_security_admin_configuration *)

let azurerm_network_manager_security_admin_configuration
    ?apply_on_network_intent_policy_based_services ?description ?id
    ?timeouts ~name ~network_manager_id __resource_id =
  let __resource_type =
    "azurerm_network_manager_security_admin_configuration"
  in
  let __resource =
    {
      apply_on_network_intent_policy_based_services;
      description;
      id;
      name;
      network_manager_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_security_admin_configuration
       __resource);
  ()
