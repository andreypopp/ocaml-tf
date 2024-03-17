(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_network_mapping__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_network_mapping__timeouts *)

type azurerm_site_recovery_network_mapping = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_network_id : string prop;  (** source_network_id *)
  source_recovery_fabric_name : string prop;
      (** source_recovery_fabric_name *)
  target_network_id : string prop;  (** target_network_id *)
  target_recovery_fabric_name : string prop;
      (** target_recovery_fabric_name *)
  timeouts : azurerm_site_recovery_network_mapping__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_network_mapping *)

let azurerm_site_recovery_network_mapping ?id ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~source_network_id
    ~source_recovery_fabric_name ~target_network_id
    ~target_recovery_fabric_name __resource_id =
  let __resource_type = "azurerm_site_recovery_network_mapping" in
  let __resource =
    {
      id;
      name;
      recovery_vault_name;
      resource_group_name;
      source_network_id;
      source_recovery_fabric_name;
      target_network_id;
      target_recovery_fabric_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_network_mapping __resource);
  ()
