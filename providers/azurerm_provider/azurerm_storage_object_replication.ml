(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_storage_object_replication__rules = {
  copy_blobs_created_after : string option; [@option]
      (** copy_blobs_created_after *)
  destination_container_name : string;
      (** destination_container_name *)
  filter_out_blobs_with_prefix : string list option; [@option]
      (** filter_out_blobs_with_prefix *)
  name : string;  (** name *)
  source_container_name : string;  (** source_container_name *)
}
[@@deriving yojson_of]
(** azurerm_storage_object_replication__rules *)

type azurerm_storage_object_replication__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_object_replication__timeouts *)

type azurerm_storage_object_replication = {
  destination_storage_account_id : string;
      (** destination_storage_account_id *)
  source_storage_account_id : string;
      (** source_storage_account_id *)
  rules : azurerm_storage_object_replication__rules list;
  timeouts : azurerm_storage_object_replication__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_object_replication *)

let azurerm_storage_object_replication ?timeouts
    ~destination_storage_account_id ~source_storage_account_id ~rules
    __resource_id =
  let __resource_type = "azurerm_storage_object_replication" in
  let __resource =
    {
      destination_storage_account_id;
      source_storage_account_id;
      rules;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_object_replication __resource);
  ()
