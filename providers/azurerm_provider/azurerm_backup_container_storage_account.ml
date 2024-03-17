(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_backup_container_storage_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_backup_container_storage_account__timeouts *)

type azurerm_backup_container_storage_account = {
  id : string option; [@option]  (** id *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_id : string;  (** storage_account_id *)
  timeouts :
    azurerm_backup_container_storage_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_container_storage_account *)

let azurerm_backup_container_storage_account ?id ?timeouts
    ~recovery_vault_name ~resource_group_name ~storage_account_id
    __resource_id =
  let __resource_type = "azurerm_backup_container_storage_account" in
  let __resource =
    {
      id;
      recovery_vault_name;
      resource_group_name;
      storage_account_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_container_storage_account __resource);
  ()
