(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_blob_fs_location = {
  dynamic_file_system_enabled : bool prop option; [@option]
      (** dynamic_file_system_enabled *)
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  file_system : string prop option; [@option]  (** file_system *)
  filename : string prop option; [@option]  (** filename *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** azure_blob_fs_location *)

type azure_blob_storage_location = {
  container : string prop;  (** container *)
  dynamic_container_enabled : bool prop option; [@option]
      (** dynamic_container_enabled *)
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  filename : string prop option; [@option]  (** filename *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** azure_blob_storage_location *)

type http_server_location = {
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  filename : string prop;  (** filename *)
  path : string prop option; [@option]  (** path *)
  relative_url : string prop;  (** relative_url *)
}
[@@deriving yojson_of]
(** http_server_location *)

type schema_column = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** schema_column *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_dataset_parquet = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  compression_codec : string prop option; [@option]
      (** compression_codec *)
  compression_level : string prop option; [@option]
      (** compression_level *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  azure_blob_fs_location : azure_blob_fs_location list;
  azure_blob_storage_location : azure_blob_storage_location list;
  http_server_location : http_server_location list;
  schema_column : schema_column list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_parquet *)

let azure_blob_fs_location ?dynamic_file_system_enabled
    ?dynamic_filename_enabled ?dynamic_path_enabled ?file_system
    ?filename ?path () : azure_blob_fs_location =
  {
    dynamic_file_system_enabled;
    dynamic_filename_enabled;
    dynamic_path_enabled;
    file_system;
    filename;
    path;
  }

let azure_blob_storage_location ?dynamic_container_enabled
    ?dynamic_filename_enabled ?dynamic_path_enabled ?filename ?path
    ~container () : azure_blob_storage_location =
  {
    container;
    dynamic_container_enabled;
    dynamic_filename_enabled;
    dynamic_path_enabled;
    filename;
    path;
  }

let http_server_location ?dynamic_filename_enabled
    ?dynamic_path_enabled ?path ~filename ~relative_url () :
    http_server_location =
  {
    dynamic_filename_enabled;
    dynamic_path_enabled;
    filename;
    path;
    relative_url;
  }

let schema_column ?description ?type_ ~name () : schema_column =
  { description; name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_dataset_parquet ?additional_properties
    ?annotations ?compression_codec ?compression_level ?description
    ?folder ?id ?parameters ?timeouts ~data_factory_id
    ~linked_service_name ~name ~azure_blob_fs_location
    ~azure_blob_storage_location ~http_server_location ~schema_column
    () : azurerm_data_factory_dataset_parquet =
  {
    additional_properties;
    annotations;
    compression_codec;
    compression_level;
    data_factory_id;
    description;
    folder;
    id;
    linked_service_name;
    name;
    parameters;
    azure_blob_fs_location;
    azure_blob_storage_location;
    http_server_location;
    schema_column;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  compression_codec : string prop;
  compression_level : string prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

let make ?additional_properties ?annotations ?compression_codec
    ?compression_level ?description ?folder ?id ?parameters ?timeouts
    ~data_factory_id ~linked_service_name ~name
    ~azure_blob_fs_location ~azure_blob_storage_location
    ~http_server_location ~schema_column __id =
  let __type = "azurerm_data_factory_dataset_parquet" in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       compression_codec =
         Prop.computed __type __id "compression_codec";
       compression_level =
         Prop.computed __type __id "compression_level";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       linked_service_name =
         Prop.computed __type __id "linked_service_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_dataset_parquet
        (azurerm_data_factory_dataset_parquet ?additional_properties
           ?annotations ?compression_codec ?compression_level
           ?description ?folder ?id ?parameters ?timeouts
           ~data_factory_id ~linked_service_name ~name
           ~azure_blob_fs_location ~azure_blob_storage_location
           ~http_server_location ~schema_column ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?compression_codec ?compression_level ?description ?folder ?id
    ?parameters ?timeouts ~data_factory_id ~linked_service_name ~name
    ~azure_blob_fs_location ~azure_blob_storage_location
    ~http_server_location ~schema_column __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?compression_codec
      ?compression_level ?description ?folder ?id ?parameters
      ?timeouts ~data_factory_id ~linked_service_name ~name
      ~azure_blob_fs_location ~azure_blob_storage_location
      ~http_server_location ~schema_column __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
