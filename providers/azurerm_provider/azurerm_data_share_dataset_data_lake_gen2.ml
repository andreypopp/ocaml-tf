(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_share_dataset_data_lake_gen2__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_data_lake_gen2__timeouts *)

type azurerm_data_share_dataset_data_lake_gen2 = {
  file_path : string prop option; [@option]  (** file_path *)
  file_system_name : string prop;  (** file_system_name *)
  folder_path : string prop option; [@option]  (** folder_path *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  share_id : string prop;  (** share_id *)
  storage_account_id : string prop;  (** storage_account_id *)
  timeouts :
    azurerm_data_share_dataset_data_lake_gen2__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_data_lake_gen2 *)

let azurerm_data_share_dataset_data_lake_gen2 ?file_path ?folder_path
    ?id ?timeouts ~file_system_name ~name ~share_id
    ~storage_account_id __resource_id =
  let __resource_type =
    "azurerm_data_share_dataset_data_lake_gen2"
  in
  let __resource =
    {
      file_path;
      file_system_name;
      folder_path;
      id;
      name;
      share_id;
      storage_account_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_data_lake_gen2 __resource);
  ()
