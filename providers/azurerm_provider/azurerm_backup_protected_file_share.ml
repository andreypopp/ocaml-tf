(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_backup_protected_file_share__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_backup_protected_file_share__timeouts *)

type azurerm_backup_protected_file_share = {
  backup_policy_id : string prop;  (** backup_policy_id *)
  id : string prop option; [@option]  (** id *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_file_share_name : string prop;
      (** source_file_share_name *)
  source_storage_account_id : string prop;
      (** source_storage_account_id *)
  timeouts : azurerm_backup_protected_file_share__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_protected_file_share *)

let azurerm_backup_protected_file_share ?id ?timeouts
    ~backup_policy_id ~recovery_vault_name ~resource_group_name
    ~source_file_share_name ~source_storage_account_id __resource_id
    =
  let __resource_type = "azurerm_backup_protected_file_share" in
  let __resource =
    {
      backup_policy_id;
      id;
      recovery_vault_name;
      resource_group_name;
      source_file_share_name;
      source_storage_account_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_protected_file_share __resource);
  ()
