(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_backup_protected_file_share = {
  backup_policy_id : string prop;  (** backup_policy_id *)
  id : string prop option; [@option]  (** id *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_file_share_name : string prop;
      (** source_file_share_name *)
  source_storage_account_id : string prop;
      (** source_storage_account_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_protected_file_share *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_backup_protected_file_share ?id ?timeouts
    ~backup_policy_id ~recovery_vault_name ~resource_group_name
    ~source_file_share_name ~source_storage_account_id () :
    azurerm_backup_protected_file_share =
  {
    backup_policy_id;
    id;
    recovery_vault_name;
    resource_group_name;
    source_file_share_name;
    source_storage_account_id;
    timeouts;
  }

type t = {
  backup_policy_id : string prop;
  id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_file_share_name : string prop;
  source_storage_account_id : string prop;
}

let register ?tf_module ?id ?timeouts ~backup_policy_id
    ~recovery_vault_name ~resource_group_name ~source_file_share_name
    ~source_storage_account_id __resource_id =
  let __resource_type = "azurerm_backup_protected_file_share" in
  let __resource =
    azurerm_backup_protected_file_share ?id ?timeouts
      ~backup_policy_id ~recovery_vault_name ~resource_group_name
      ~source_file_share_name ~source_storage_account_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_protected_file_share __resource);
  let __resource_attributes =
    ({
       backup_policy_id =
         Prop.computed __resource_type __resource_id
           "backup_policy_id";
       id = Prop.computed __resource_type __resource_id "id";
       recovery_vault_name =
         Prop.computed __resource_type __resource_id
           "recovery_vault_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       source_file_share_name =
         Prop.computed __resource_type __resource_id
           "source_file_share_name";
       source_storage_account_id =
         Prop.computed __resource_type __resource_id
           "source_storage_account_id";
     }
      : t)
  in
  __resource_attributes
