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

type t = {
  display_name : string prop;
  file_path : string prop;
  file_system_name : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  share_id : string prop;
  storage_account_id : string prop;
}

let azurerm_data_share_dataset_data_lake_gen2 ?file_path ?folder_path
    ?id ?timeouts ~file_system_name ~name ~share_id
    ~storage_account_id __resource_id =
  let __resource_type =
    "azurerm_data_share_dataset_data_lake_gen2"
  in
  let __resource =
    ({
       file_path;
       file_system_name;
       folder_path;
       id;
       name;
       share_id;
       storage_account_id;
       timeouts;
     }
      : azurerm_data_share_dataset_data_lake_gen2)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_dataset_data_lake_gen2 __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       file_path =
         Prop.computed __resource_type __resource_id "file_path";
       file_system_name =
         Prop.computed __resource_type __resource_id
           "file_system_name";
       folder_path =
         Prop.computed __resource_type __resource_id "folder_path";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       share_id =
         Prop.computed __resource_type __resource_id "share_id";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes
