(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_backup_container_storage_account = {
  id : string prop option; [@option]  (** id *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_id : string prop;  (** storage_account_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_container_storage_account *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_backup_container_storage_account ?id ?timeouts
    ~recovery_vault_name ~resource_group_name ~storage_account_id ()
    : azurerm_backup_container_storage_account =
  {
    id;
    recovery_vault_name;
    resource_group_name;
    storage_account_id;
    timeouts;
  }

type t = {
  id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
}

let register ?tf_module ?id ?timeouts ~recovery_vault_name
    ~resource_group_name ~storage_account_id __resource_id =
  let __resource_type = "azurerm_backup_container_storage_account" in
  let __resource =
    azurerm_backup_container_storage_account ?id ?timeouts
      ~recovery_vault_name ~resource_group_name ~storage_account_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_container_storage_account __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       recovery_vault_name =
         Prop.computed __resource_type __resource_id
           "recovery_vault_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes
