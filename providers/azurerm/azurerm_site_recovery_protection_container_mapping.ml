(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_protection_container_mapping__automatic_update = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  automation_account_id : string prop option; [@option]
      (** automation_account_id *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container_mapping__automatic_update *)

type azurerm_site_recovery_protection_container_mapping__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container_mapping__timeouts *)

type azurerm_site_recovery_protection_container_mapping = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_fabric_name : string prop;  (** recovery_fabric_name *)
  recovery_replication_policy_id : string prop;
      (** recovery_replication_policy_id *)
  recovery_source_protection_container_name : string prop;
      (** recovery_source_protection_container_name *)
  recovery_target_protection_container_id : string prop;
      (** recovery_target_protection_container_id *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  automatic_update :
    azurerm_site_recovery_protection_container_mapping__automatic_update
    list;
  timeouts :
    azurerm_site_recovery_protection_container_mapping__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_protection_container_mapping *)

type t = {
  id : string prop;
  name : string prop;
  recovery_fabric_name : string prop;
  recovery_replication_policy_id : string prop;
  recovery_source_protection_container_name : string prop;
  recovery_target_protection_container_id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

let azurerm_site_recovery_protection_container_mapping ?id ?timeouts
    ~name ~recovery_fabric_name ~recovery_replication_policy_id
    ~recovery_source_protection_container_name
    ~recovery_target_protection_container_id ~recovery_vault_name
    ~resource_group_name ~automatic_update __resource_id =
  let __resource_type =
    "azurerm_site_recovery_protection_container_mapping"
  in
  let __resource =
    ({
       id;
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
      : azurerm_site_recovery_protection_container_mapping)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_protection_container_mapping
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_fabric_name =
         Prop.computed __resource_type __resource_id
           "recovery_fabric_name";
       recovery_replication_policy_id =
         Prop.computed __resource_type __resource_id
           "recovery_replication_policy_id";
       recovery_source_protection_container_name =
         Prop.computed __resource_type __resource_id
           "recovery_source_protection_container_name";
       recovery_target_protection_container_id =
         Prop.computed __resource_type __resource_id
           "recovery_target_protection_container_id";
       recovery_vault_name =
         Prop.computed __resource_type __resource_id
           "recovery_vault_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
