(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_object_replication__rules = {
  copy_blobs_created_after : string prop option; [@option]
      (** copy_blobs_created_after *)
  destination_container_name : string prop;
      (** destination_container_name *)
  filter_out_blobs_with_prefix : string prop list option; [@option]
      (** filter_out_blobs_with_prefix *)
  name : string prop;  (** name *)
  source_container_name : string prop;  (** source_container_name *)
}
[@@deriving yojson_of]
(** azurerm_storage_object_replication__rules *)

type azurerm_storage_object_replication__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_object_replication__timeouts *)

type azurerm_storage_object_replication = {
  destination_storage_account_id : string prop;
      (** destination_storage_account_id *)
  id : string prop option; [@option]  (** id *)
  source_storage_account_id : string prop;
      (** source_storage_account_id *)
  rules : azurerm_storage_object_replication__rules list;
  timeouts : azurerm_storage_object_replication__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_object_replication *)

type t = {
  destination_object_replication_id : string prop;
  destination_storage_account_id : string prop;
  id : string prop;
  source_object_replication_id : string prop;
  source_storage_account_id : string prop;
}

let azurerm_storage_object_replication ?id ?timeouts
    ~destination_storage_account_id ~source_storage_account_id ~rules
    __resource_id =
  let __resource_type = "azurerm_storage_object_replication" in
  let __resource =
    ({
       destination_storage_account_id;
       id;
       source_storage_account_id;
       rules;
       timeouts;
     }
      : azurerm_storage_object_replication)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_object_replication __resource);
  let __resource_attributes =
    ({
       destination_object_replication_id =
         Prop.computed __resource_type __resource_id
           "destination_object_replication_id";
       destination_storage_account_id =
         Prop.computed __resource_type __resource_id
           "destination_storage_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       source_object_replication_id =
         Prop.computed __resource_type __resource_id
           "source_object_replication_id";
       source_storage_account_id =
         Prop.computed __resource_type __resource_id
           "source_storage_account_id";
     }
      : t)
  in
  __resource_attributes
