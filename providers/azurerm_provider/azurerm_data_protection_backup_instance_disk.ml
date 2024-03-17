(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_instance_disk__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_disk__timeouts *)

type azurerm_data_protection_backup_instance_disk = {
  backup_policy_id : string prop;  (** backup_policy_id *)
  disk_id : string prop;  (** disk_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  snapshot_resource_group_name : string prop;
      (** snapshot_resource_group_name *)
  vault_id : string prop;  (** vault_id *)
  timeouts :
    azurerm_data_protection_backup_instance_disk__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_disk *)

let azurerm_data_protection_backup_instance_disk ?id ?timeouts
    ~backup_policy_id ~disk_id ~location ~name
    ~snapshot_resource_group_name ~vault_id __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_instance_disk"
  in
  let __resource =
    {
      backup_policy_id;
      disk_id;
      id;
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
