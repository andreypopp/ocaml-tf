(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_protection_backup_instance_disk__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_disk__timeouts *)

type azurerm_data_protection_backup_instance_disk = {
  backup_policy_id : string;  (** backup_policy_id *)
  disk_id : string;  (** disk_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  snapshot_resource_group_name : string;
      (** snapshot_resource_group_name *)
  vault_id : string;  (** vault_id *)
  timeouts :
    azurerm_data_protection_backup_instance_disk__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_disk *)

let azurerm_data_protection_backup_instance_disk ?timeouts
    ~backup_policy_id ~disk_id ~location ~name
    ~snapshot_resource_group_name ~vault_id __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_instance_disk"
  in
  let __resource =
    {
      backup_policy_id;
      disk_id;
      location;
      name;
      snapshot_resource_group_name;
      vault_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_instance_disk
       __resource);
  ()