(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_share_dataset_data_lake_gen2__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_data_lake_gen2__timeouts *)

type azurerm_data_share_dataset_data_lake_gen2 = {
  file_path : string option; [@option]  (** file_path *)
  file_system_name : string;  (** file_system_name *)
  folder_path : string option; [@option]  (** folder_path *)
  name : string;  (** name *)
  share_id : string;  (** share_id *)
  storage_account_id : string;  (** storage_account_id *)
  timeouts :
    azurerm_data_share_dataset_data_lake_gen2__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_data_lake_gen2 *)

let azurerm_data_share_dataset_data_lake_gen2 ?file_path ?folder_path
    ?timeouts ~file_system_name ~name ~share_id ~storage_account_id
    __resource_id =
  let __resource_type =
    "azurerm_data_share_dataset_data_lake_gen2"
  in
  let __resource =
    {
      file_path;
      file_system_name;
      folder_path;
      name;
      share_id;
      storage_account_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_data_lake_gen2 __resource);
  ()
