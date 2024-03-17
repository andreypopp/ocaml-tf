(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_network_manager_admin_rule_collection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_admin_rule_collection__timeouts *)

type azurerm_network_manager_admin_rule_collection = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  network_group_ids : string list;  (** network_group_ids *)
  security_admin_configuration_id : string;
      (** security_admin_configuration_id *)
  timeouts :
    azurerm_network_manager_admin_rule_collection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_admin_rule_collection *)

let azurerm_network_manager_admin_rule_collection ?description
    ?timeouts ~name ~network_group_ids
    ~security_admin_configuration_id __resource_id =
  let __resource_type =
    "azurerm_network_manager_admin_rule_collection"
  in
  let __resource =
    {
      description;
      name;
      network_group_ids;
      security_admin_configuration_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_admin_rule_collection
       __resource);
  ()
