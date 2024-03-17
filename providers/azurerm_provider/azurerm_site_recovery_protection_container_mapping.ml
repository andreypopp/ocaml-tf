(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_protection_container_mapping__automatic_update = {
  authentication_type : string option; [@option]
      (** authentication_type *)
  automation_account_id : string option; [@option]
      (** automation_account_id *)
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container_mapping__automatic_update *)

type azurerm_site_recovery_protection_container_mapping__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container_mapping__timeouts *)

type azurerm_site_recovery_protection_container_mapping = {
  name : string;  (** name *)
  recovery_fabric_name : string;  (** recovery_fabric_name *)
  recovery_replication_policy_id : string;
      (** recovery_replication_policy_id *)
  recovery_source_protection_container_name : string;
      (** recovery_source_protection_container_name *)
  recovery_target_protection_container_id : string;
      (** recovery_target_protection_container_id *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  automatic_update :
    azurerm_site_recovery_protection_container_mapping__automatic_update
    list;
  timeouts :
    azurerm_site_recovery_protection_container_mapping__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container_mapping *)

let azurerm_site_recovery_protection_container_mapping ?timeouts
    ~name ~recovery_fabric_name ~recovery_replication_policy_id
    ~recovery_source_protection_container_name
    ~recovery_target_protection_container_id ~recovery_vault_name
    ~resource_group_name ~automatic_update __resource_id =
  let __resource_type =
    "azurerm_site_recovery_protection_container_mapping"
  in
  let __resource =
    {
      name;
      recovery_fabric_name;
      recovery_replication_policy_id;
      recovery_source_protection_container_name;
      recovery_target_protection_container_id;
      recovery_vault_name;
      resource_group_name;
      automatic_update;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_protection_container_mapping
       __resource);
  ()
