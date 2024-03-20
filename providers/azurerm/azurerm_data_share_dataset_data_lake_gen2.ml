(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_share_dataset_data_lake_gen2 = {
  file_path : string prop option; [@option]  (** file_path *)
  file_system_name : string prop;  (** file_system_name *)
  folder_path : string prop option; [@option]  (** folder_path *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  share_id : string prop;  (** share_id *)
  storage_account_id : string prop;  (** storage_account_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_data_lake_gen2 *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_share_dataset_data_lake_gen2 ?file_path ?folder_path
    ?id ?timeouts ~file_system_name ~name ~share_id
    ~storage_account_id () :
    azurerm_data_share_dataset_data_lake_gen2 =
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

let make ?file_path ?folder_path ?id ?timeouts ~file_system_name
    ~name ~share_id ~storage_account_id __id =
  let __type = "azurerm_data_share_dataset_data_lake_gen2" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       file_path = Prop.computed __type __id "file_path";
       file_system_name =
         Prop.computed __type __id "file_system_name";
       folder_path = Prop.computed __type __id "folder_path";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       share_id = Prop.computed __type __id "share_id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_share_dataset_data_lake_gen2
        (azurerm_data_share_dataset_data_lake_gen2 ?file_path
           ?folder_path ?id ?timeouts ~file_system_name ~name
           ~share_id ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?file_path ?folder_path ?id ?timeouts
    ~file_system_name ~name ~share_id ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?file_path ?folder_path ?id ?timeouts ~file_system_name
      ~name ~share_id ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
