(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_backup_protected_vm__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_backup_protected_vm__timeouts *)

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
  timeouts : azurerm_backup_protected_vm__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_protected_vm *)

let azurerm_backup_protected_vm ?backup_policy_id ?exclude_disk_luns
    ?id ?include_disk_luns ?protection_state ?source_vm_id ?timeouts
    ~recovery_vault_name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_backup_protected_vm" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_protected_vm __resource);
  ()
