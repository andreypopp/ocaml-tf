(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_policy_blob_storage__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_blob_storage__timeouts *)

type azurerm_data_protection_backup_policy_blob_storage = {
  name : string;  (** name *)
  retention_duration : string;  (** retention_duration *)
  vault_id : string;  (** vault_id *)
  timeouts :
    azurerm_data_protection_backup_policy_blob_storage__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_blob_storage *)

let azurerm_data_protection_backup_policy_blob_storage ?timeouts
    ~name ~retention_duration ~vault_id __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_policy_blob_storage"
  in
  let __resource =
    { name; retention_duration; vault_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_policy_blob_storage
       __resource);
  ()
