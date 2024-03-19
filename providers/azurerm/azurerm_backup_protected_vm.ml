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

let register ?tf_module ?backup_policy_id ?exclude_disk_luns ?id
    ?include_disk_luns ?protection_state ?source_vm_id ?timeouts
    ~recovery_vault_name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_backup_protected_vm" in
  let __resource =
    azurerm_backup_protected_vm ?backup_policy_id ?exclude_disk_luns
      ?id ?include_disk_luns ?protection_state ?source_vm_id
      ?timeouts ~recovery_vault_name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_protected_vm __resource);
  let __resource_attributes =
    ({
       backup_policy_id =
         Prop.computed __resource_type __resource_id
           "backup_policy_id";
       exclude_disk_luns =
         Prop.computed __resource_type __resource_id
           "exclude_disk_luns";
       id = Prop.computed __resource_type __resource_id "id";
       include_disk_luns =
         Prop.computed __resource_type __resource_id
           "include_disk_luns";
       protection_state =
         Prop.computed __resource_type __resource_id
           "protection_state";
       recovery_vault_name =
         Prop.computed __resource_type __resource_id
           "recovery_vault_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       source_vm_id =
         Prop.computed __resource_type __resource_id "source_vm_id";
     }
      : t)
  in
  __resource_attributes
