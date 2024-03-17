(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_share_dataset_blob_storage__storage_account = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  subscription_id : string;  (** subscription_id *)
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_blob_storage__storage_account *)

type azurerm_data_share_dataset_blob_storage__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_blob_storage__timeouts *)

type azurerm_data_share_dataset_blob_storage = {
  container_name : string;  (** container_name *)
  data_share_id : string;  (** data_share_id *)
  file_path : string option; [@option]  (** file_path *)
  folder_path : string option; [@option]  (** folder_path *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  storage_account :
    azurerm_data_share_dataset_blob_storage__storage_account list;
  timeouts : azurerm_data_share_dataset_blob_storage__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_blob_storage *)

let azurerm_data_share_dataset_blob_storage ?file_path ?folder_path
    ?id ?timeouts ~container_name ~data_share_id ~name
    ~storage_account __resource_id =
  let __resource_type = "azurerm_data_share_dataset_blob_storage" in
  let __resource =
    {
      container_name;
      data_share_id;
      file_path;
      folder_path;
      id;
      name;
      storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_blob_storage __resource);
  ()
