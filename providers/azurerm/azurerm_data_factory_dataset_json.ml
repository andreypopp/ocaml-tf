(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_blob_storage_location = {
  container : string prop;
  dynamic_container_enabled : bool prop option; [@option]
  dynamic_filename_enabled : bool prop option; [@option]
  dynamic_path_enabled : bool prop option; [@option]
  filename : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_blob_storage_location) -> ()

let yojson_of_azure_blob_storage_location =
  (function
   | {
       container = v_container;
       dynamic_container_enabled = v_dynamic_container_enabled;
       dynamic_filename_enabled = v_dynamic_filename_enabled;
       dynamic_path_enabled = v_dynamic_path_enabled;
       filename = v_filename;
       path = v_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filename in
         ("filename", arg) :: bnds
       in
       let bnds =
         match v_dynamic_path_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_path_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamic_filename_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_filename_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamic_container_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_container_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_container in
         ("container", arg) :: bnds
       in
       `Assoc bnds
    : azure_blob_storage_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_blob_storage_location

[@@@deriving.end]

type http_server_location = {
  dynamic_filename_enabled : bool prop option; [@option]
  dynamic_path_enabled : bool prop option; [@option]
  filename : string prop;
  path : string prop;
  relative_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_server_location) -> ()

let yojson_of_http_server_location =
  (function
   | {
       dynamic_filename_enabled = v_dynamic_filename_enabled;
       dynamic_path_enabled = v_dynamic_path_enabled;
       filename = v_filename;
       path = v_path;
       relative_url = v_relative_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_relative_url in
         ("relative_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filename in
         ("filename", arg) :: bnds
       in
       let bnds =
         match v_dynamic_path_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_path_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamic_filename_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_filename_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_server_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_server_location

[@@@deriving.end]

type schema_column = {
  description : string prop option; [@option]
  name : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_column) -> ()

let yojson_of_schema_column =
  (function
   | { description = v_description; name = v_name; type_ = v_type_ }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schema_column -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_column

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_data_factory_dataset_json = {
  additional_properties : (string * string prop) list option;
      [@option]
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  encoding : string prop option; [@option]
  folder : string prop option; [@option]
  id : string prop option; [@option]
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  azure_blob_storage_location : azure_blob_storage_location list;
  http_server_location : http_server_location list;
  schema_column : schema_column list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_dataset_json) -> ()

let yojson_of_azurerm_data_factory_dataset_json =
  (function
   | {
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       encoding = v_encoding;
       folder = v_folder;
       id = v_id;
       linked_service_name = v_linked_service_name;
       name = v_name;
       parameters = v_parameters;
       azure_blob_storage_location = v_azure_blob_storage_location;
       http_server_location = v_http_server_location;
       schema_column = v_schema_column;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schema_column v_schema_column
         in
         ("schema_column", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_http_server_location
             v_http_server_location
         in
         ("http_server_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_azure_blob_storage_location
             v_azure_blob_storage_location
         in
         ("azure_blob_storage_location", arg) :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linked_service_name
         in
         ("linked_service_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "folder", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "additional_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_dataset_json ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_dataset_json

[@@@deriving.end]

let azure_blob_storage_location ?dynamic_container_enabled
    ?dynamic_filename_enabled ?dynamic_path_enabled ~container
    ~filename ~path () : azure_blob_storage_location =
  {
    container;
    dynamic_container_enabled;
    dynamic_filename_enabled;
    dynamic_path_enabled;
    filename;
    path;
  }

let http_server_location ?dynamic_filename_enabled
    ?dynamic_path_enabled ~filename ~path ~relative_url () :
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

let azurerm_data_factory_dataset_json ?additional_properties
    ?annotations ?description ?encoding ?folder ?id ?parameters
    ?(azure_blob_storage_location = []) ?(http_server_location = [])
    ?(schema_column = []) ?timeouts ~data_factory_id
    ~linked_service_name ~name () : azurerm_data_factory_dataset_json
    =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    encoding;
    folder;
    id;
    linked_service_name;
    name;
    parameters;
    azure_blob_storage_location;
    http_server_location;
    schema_column;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  encoding : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

let make ?additional_properties ?annotations ?description ?encoding
    ?folder ?id ?parameters ?(azure_blob_storage_location = [])
    ?(http_server_location = []) ?(schema_column = []) ?timeouts
    ~data_factory_id ~linked_service_name ~name __id =
  let __type = "azurerm_data_factory_dataset_json" in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       encoding = Prop.computed __type __id "encoding";
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
      yojson_of_azurerm_data_factory_dataset_json
        (azurerm_data_factory_dataset_json ?additional_properties
           ?annotations ?description ?encoding ?folder ?id
           ?parameters ~azure_blob_storage_location
           ~http_server_location ~schema_column ?timeouts
           ~data_factory_id ~linked_service_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?encoding ?folder ?id ?parameters
    ?(azure_blob_storage_location = []) ?(http_server_location = [])
    ?(schema_column = []) ?timeouts ~data_factory_id
    ~linked_service_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?encoding
      ?folder ?id ?parameters ~azure_blob_storage_location
      ~http_server_location ~schema_column ?timeouts ~data_factory_id
      ~linked_service_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
