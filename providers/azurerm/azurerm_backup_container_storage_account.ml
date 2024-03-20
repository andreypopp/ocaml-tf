(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~recovery_vault_name ~resource_group_name
    ~storage_account_id __id =
  let __type = "azurerm_backup_container_storage_account" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_backup_container_storage_account
        (azurerm_backup_container_storage_account ?id ?timeouts
           ~recovery_vault_name ~resource_group_name
           ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~recovery_vault_name
    ~resource_group_name ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~recovery_vault_name ~resource_group_name
      ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
