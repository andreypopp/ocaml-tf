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

type t = {
  apply_on_network_intent_policy_based_services : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

let azurerm_network_manager_security_admin_configuration
    ?apply_on_network_intent_policy_based_services ?description ?id
    ?timeouts ~name ~network_manager_id __resource_id =
  let __resource_type =
    "azurerm_network_manager_security_admin_configuration"
  in
  let __resource =
    ({
       apply_on_network_intent_policy_based_services;
       description;
       id;
       name;
       network_manager_id;
       timeouts;
     }
      : azurerm_network_manager_security_admin_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_security_admin_configuration
       __resource);
  let __resource_attributes =
    ({
       apply_on_network_intent_policy_based_services =
         Prop.computed __resource_type __resource_id
           "apply_on_network_intent_policy_based_services";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network_manager_id =
         Prop.computed __resource_type __resource_id
           "network_manager_id";
     }
      : t)
  in
  __resource_attributes
