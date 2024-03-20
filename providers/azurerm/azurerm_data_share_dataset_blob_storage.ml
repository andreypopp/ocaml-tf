(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type storage_account = {
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_id : string prop;  (** subscription_id *)
}
[@@deriving yojson_of]
(** storage_account *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_share_dataset_blob_storage = {
  container_name : string prop;  (** container_name *)
  data_share_id : string prop;  (** data_share_id *)
  file_path : string prop option; [@option]  (** file_path *)
  folder_path : string prop option; [@option]  (** folder_path *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_blob_storage *)

let storage_account ~name ~resource_group_name ~subscription_id () :
    storage_account =
  { name; resource_group_name; subscription_id }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_share_dataset_blob_storage ?file_path ?folder_path
    ?id ?timeouts ~container_name ~data_share_id ~name
    ~storage_account () : azurerm_data_share_dataset_blob_storage =
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

type t = {
  container_name : string prop;
  data_share_id : string prop;
  display_name : string prop;
  file_path : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
}

let make ?file_path ?folder_path ?id ?timeouts ~container_name
    ~data_share_id ~name ~storage_account __id =
  let __type = "azurerm_data_share_dataset_blob_storage" in
  let __attrs =
    ({
       container_name = Prop.computed __type __id "container_name";
       data_share_id = Prop.computed __type __id "data_share_id";
       display_name = Prop.computed __type __id "display_name";
       file_path = Prop.computed __type __id "file_path";
       folder_path = Prop.computed __type __id "folder_path";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_share_dataset_blob_storage
        (azurerm_data_share_dataset_blob_storage ?file_path
           ?folder_path ?id ?timeouts ~container_name ~data_share_id
           ~name ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?file_path ?folder_path ?id ?timeouts
    ~container_name ~data_share_id ~name ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?file_path ?folder_path ?id ?timeouts ~container_name
      ~data_share_id ~name ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
