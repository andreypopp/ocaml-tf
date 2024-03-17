(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_backup_protected_vm__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_backup_protected_vm__timeouts *)

type azurerm_backup_protected_vm = {
  backup_policy_id : string option; [@option]
      (** backup_policy_id *)
  exclude_disk_luns : float list option; [@option]
      (** exclude_disk_luns *)
  id : string option; [@option]  (** id *)
  include_disk_luns : float list option; [@option]
      (** include_disk_luns *)
  protection_state : string option; [@option]
      (** protection_state *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  source_vm_id : string option; [@option]  (** source_vm_id *)
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
