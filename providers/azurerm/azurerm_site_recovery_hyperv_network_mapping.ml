(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_hyperv_network_mapping__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_network_mapping__timeouts *)

type azurerm_site_recovery_hyperv_network_mapping = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  source_network_name : string prop;  (** source_network_name *)
  source_system_center_virtual_machine_manager_name : string prop;
      (** source_system_center_virtual_machine_manager_name *)
  target_network_id : string prop;  (** target_network_id *)
  timeouts :
    azurerm_site_recovery_hyperv_network_mapping__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_network_mapping *)

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
  source_network_name : string prop;
  source_system_center_virtual_machine_manager_name : string prop;
  target_network_id : string prop;
}

let azurerm_site_recovery_hyperv_network_mapping ?id ?timeouts ~name
    ~recovery_vault_id ~source_network_name
    ~source_system_center_virtual_machine_manager_name
    ~target_network_id __resource_id =
  let __resource_type =
    "azurerm_site_recovery_hyperv_network_mapping"
  in
  let __resource =
    ({
       id;
       name;
       recovery_vault_id;
       source_network_name;
       source_system_center_virtual_machine_manager_name;
       target_network_id;
       timeouts;
     }
      : azurerm_site_recovery_hyperv_network_mapping)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_hyperv_network_mapping
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_vault_id =
         Prop.computed __resource_type __resource_id
           "recovery_vault_id";
       source_network_name =
         Prop.computed __resource_type __resource_id
           "source_network_name";
       source_system_center_virtual_machine_manager_name =
         Prop.computed __resource_type __resource_id
           "source_system_center_virtual_machine_manager_name";
       target_network_id =
         Prop.computed __resource_type __resource_id
           "target_network_id";
     }
      : t)
  in
  __resource_attributes
