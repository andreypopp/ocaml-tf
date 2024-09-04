(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_blob_fs_location = {
  dynamic_file_system_enabled : bool prop option; [@option]
  dynamic_filename_enabled : bool prop option; [@option]
  dynamic_path_enabled : bool prop option; [@option]
  file_system : string prop option; [@option]
  filename : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_blob_fs_location) -> ()

let yojson_of_azure_blob_fs_location =
  (function
   | {
       dynamic_file_system_enabled = v_dynamic_file_system_enabled;
       dynamic_filename_enabled = v_dynamic_filename_enabled;
       dynamic_path_enabled = v_dynamic_path_enabled;
       file_system = v_file_system;
       filename = v_filename;
       path = v_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filename with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system", arg in
             bnd :: bnds
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
         match v_dynamic_file_system_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_file_system_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azure_blob_fs_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_blob_fs_location

[@@@deriving.end]

type azure_blob_storage_location = {
  container : string prop;
  dynamic_container_enabled : bool prop option; [@option]
  dynamic_filename_enabled : bool prop option; [@option]
  dynamic_path_enabled : bool prop option; [@option]
  filename : string prop option; [@option]
  path : string prop option; [@option]
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
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filename with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename", arg in
             bnd :: bnds
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

type azurerm_data_factory_dataset_delimited_text = {
  additional_properties : string prop Tf_core.assoc option; [@option]
  annotations : string prop list option; [@option]
  column_delimiter : string prop option; [@option]
  compression_codec : string prop option; [@option]
  compression_level : string prop option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  encoding : string prop option; [@option]
  escape_character : string prop option; [@option]
  first_row_as_header : bool prop option; [@option]
  folder : string prop option; [@option]
  id : string prop option; [@option]
  linked_service_name : string prop;
  name : string prop;
  null_value : string prop option; [@option]
  parameters : string prop Tf_core.assoc option; [@option]
  quote_character : string prop option; [@option]
  row_delimiter : string prop option; [@option]
  azure_blob_fs_location : azure_blob_fs_location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  azure_blob_storage_location : azure_blob_storage_location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_server_location : http_server_location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema_column : schema_column list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_dataset_delimited_text) -> ()

let yojson_of_azurerm_data_factory_dataset_delimited_text =
  (function
   | {
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       column_delimiter = v_column_delimiter;
       compression_codec = v_compression_codec;
       compression_level = v_compression_level;
       data_factory_id = v_data_factory_id;
       description = v_description;
       encoding = v_encoding;
       escape_character = v_escape_character;
       first_row_as_header = v_first_row_as_header;
       folder = v_folder;
       id = v_id;
       linked_service_name = v_linked_service_name;
       name = v_name;
       null_value = v_null_value;
       parameters = v_parameters;
       quote_character = v_quote_character;
       row_delimiter = v_row_delimiter;
       azure_blob_fs_location = v_azure_blob_fs_location;
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
         if Stdlib.( = ) [] v_schema_column then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schema_column) v_schema_column
           in
           let bnd = "schema_column", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_server_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http_server_location)
               v_http_server_location
           in
           let bnd = "http_server_location", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_blob_storage_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_azure_blob_storage_location)
               v_azure_blob_storage_location
           in
           let bnd = "azure_blob_storage_location", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_blob_fs_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_azure_blob_fs_location)
               v_azure_blob_fs_location
           in
           let bnd = "azure_blob_fs_location", arg in
           bnd :: bnds
       in
       let bnds =
         match v_row_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "row_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quote_character with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quote_character", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_null_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "null_value", arg in
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
         match v_first_row_as_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "first_row_as_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_escape_character with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "escape_character", arg in
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
         match v_compression_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_codec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_codec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column_delimiter", arg in
             bnd :: bnds
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "additional_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_dataset_delimited_text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_dataset_delimited_text

[@@@deriving.end]

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

let azurerm_data_factory_dataset_delimited_text
    ?additional_properties ?annotations ?column_delimiter
    ?compression_codec ?compression_level ?description ?encoding
    ?escape_character ?first_row_as_header ?folder ?id ?null_value
    ?parameters ?quote_character ?row_delimiter
    ?(azure_blob_fs_location = [])
    ?(azure_blob_storage_location = []) ?(http_server_location = [])
    ?(schema_column = []) ?timeouts ~data_factory_id
    ~linked_service_name ~name () :
    azurerm_data_factory_dataset_delimited_text =
  {
    additional_properties;
    annotations;
    column_delimiter;
    compression_codec;
    compression_level;
    data_factory_id;
    description;
    encoding;
    escape_character;
    first_row_as_header;
    folder;
    id;
    linked_service_name;
    name;
    null_value;
    parameters;
    quote_character;
    row_delimiter;
    azure_blob_fs_location;
    azure_blob_storage_location;
    http_server_location;
    schema_column;
    timeouts;
  }

type t = {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  column_delimiter : string prop;
  compression_codec : string prop;
  compression_level : string prop;
  data_factory_id : string prop;
  description : string prop;
  encoding : string prop;
  escape_character : string prop;
  first_row_as_header : bool prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  null_value : string prop;
  parameters : string Tf_core.assoc prop;
  quote_character : string prop;
  row_delimiter : string prop;
}

let make ?additional_properties ?annotations ?column_delimiter
    ?compression_codec ?compression_level ?description ?encoding
    ?escape_character ?first_row_as_header ?folder ?id ?null_value
    ?parameters ?quote_character ?row_delimiter
    ?(azure_blob_fs_location = [])
    ?(azure_blob_storage_location = []) ?(http_server_location = [])
    ?(schema_column = []) ?timeouts ~data_factory_id
    ~linked_service_name ~name __id =
  let __type = "azurerm_data_factory_dataset_delimited_text" in
  let __attrs =
    ({
       tf_name = __id;
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       column_delimiter =
         Prop.computed __type __id "column_delimiter";
       compression_codec =
         Prop.computed __type __id "compression_codec";
       compression_level =
         Prop.computed __type __id "compression_level";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       encoding = Prop.computed __type __id "encoding";
       escape_character =
         Prop.computed __type __id "escape_character";
       first_row_as_header =
         Prop.computed __type __id "first_row_as_header";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       linked_service_name =
         Prop.computed __type __id "linked_service_name";
       name = Prop.computed __type __id "name";
       null_value = Prop.computed __type __id "null_value";
       parameters = Prop.computed __type __id "parameters";
       quote_character = Prop.computed __type __id "quote_character";
       row_delimiter = Prop.computed __type __id "row_delimiter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_dataset_delimited_text
        (azurerm_data_factory_dataset_delimited_text
           ?additional_properties ?annotations ?column_delimiter
           ?compression_codec ?compression_level ?description
           ?encoding ?escape_character ?first_row_as_header ?folder
           ?id ?null_value ?parameters ?quote_character
           ?row_delimiter ~azure_blob_fs_location
           ~azure_blob_storage_location ~http_server_location
           ~schema_column ?timeouts ~data_factory_id
           ~linked_service_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?column_delimiter ?compression_codec ?compression_level
    ?description ?encoding ?escape_character ?first_row_as_header
    ?folder ?id ?null_value ?parameters ?quote_character
    ?row_delimiter ?(azure_blob_fs_location = [])
    ?(azure_blob_storage_location = []) ?(http_server_location = [])
    ?(schema_column = []) ?timeouts ~data_factory_id
    ~linked_service_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?column_delimiter
      ?compression_codec ?compression_level ?description ?encoding
      ?escape_character ?first_row_as_header ?folder ?id ?null_value
      ?parameters ?quote_character ?row_delimiter
      ~azure_blob_fs_location ~azure_blob_storage_location
      ~http_server_location ~schema_column ?timeouts ~data_factory_id
      ~linked_service_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
