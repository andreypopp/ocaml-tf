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

type azurerm_backup_protected_vm = {
  backup_policy_id : string prop option; [@option]
      (** backup_policy_id *)
  exclude_disk_luns : float prop list option; [@option]
      (** exclude_disk_luns *)
  id : string prop option; [@option]  (** id *)
  include_disk_luns : float prop list option; [@option]
      (** include_disk_luns *)
  protection_state : string prop option; [@option]
      (** protection_state *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_vm_id : string prop option; [@option]  (** source_vm_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_protected_vm *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_backup_protected_vm ?backup_policy_id ?exclude_disk_luns
    ?id ?include_disk_luns ?protection_state ?source_vm_id ?timeouts
    ~recovery_vault_name ~resource_group_name () :
    azurerm_backup_protected_vm =
  {
    backup_policy_id;
    exclude_disk_luns;
    id;
    include_disk_luns;
    protection_state;
    recovery_vault_name;
    resource_group_name;
    source_vm_id;
    timeouts;
  }

type t = {
  backup_policy_id : string prop;
  exclude_disk_luns : float list prop;
  id : string prop;
  include_disk_luns : float list prop;
  protection_state : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_vm_id : string prop;
}

let make ?backup_policy_id ?exclude_disk_luns ?id ?include_disk_luns
    ?protection_state ?source_vm_id ?timeouts ~recovery_vault_name
    ~resource_group_name __id =
  let __type = "azurerm_backup_protected_vm" in
  let __attrs =
    ({
       backup_policy_id =
         Prop.computed __type __id "backup_policy_id";
       exclude_disk_luns =
         Prop.computed __type __id "exclude_disk_luns";
       id = Prop.computed __type __id "id";
       include_disk_luns =
         Prop.computed __type __id "include_disk_luns";
       protection_state =
         Prop.computed __type __id "protection_state";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_vm_id = Prop.computed __type __id "source_vm_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_backup_protected_vm
        (azurerm_backup_protected_vm ?backup_policy_id
           ?exclude_disk_luns ?id ?include_disk_luns
           ?protection_state ?source_vm_id ?timeouts
           ~recovery_vault_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?backup_policy_id ?exclude_disk_luns ?id
    ?include_disk_luns ?protection_state ?source_vm_id ?timeouts
    ~recovery_vault_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?backup_policy_id ?exclude_disk_luns ?id ?include_disk_luns
      ?protection_state ?source_vm_id ?timeouts ~recovery_vault_name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
