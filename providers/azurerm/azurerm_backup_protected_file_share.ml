(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~backup_policy_id ~recovery_vault_name
    ~resource_group_name ~source_file_share_name
    ~source_storage_account_id __id =
  let __type = "azurerm_backup_protected_file_share" in
  let __attrs =
    ({
       backup_policy_id =
         Prop.computed __type __id "backup_policy_id";
       id = Prop.computed __type __id "id";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_file_share_name =
         Prop.computed __type __id "source_file_share_name";
       source_storage_account_id =
         Prop.computed __type __id "source_storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_backup_protected_file_share
        (azurerm_backup_protected_file_share ?id ?timeouts
           ~backup_policy_id ~recovery_vault_name
           ~resource_group_name ~source_file_share_name
           ~source_storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~backup_policy_id
    ~recovery_vault_name ~resource_group_name ~source_file_share_name
    ~source_storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~backup_policy_id ~recovery_vault_name
      ~resource_group_name ~source_file_share_name
      ~source_storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
