(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_data_factory_dataset_azure_blob = {
  additional_properties : string prop Tf_core.assoc option; [@option]
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  dynamic_filename_enabled : bool prop option; [@option]
  dynamic_path_enabled : bool prop option; [@option]
  filename : string prop option; [@option]
  folder : string prop option; [@option]
  id : string prop option; [@option]
  linked_service_name : string prop;
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
  path : string prop option; [@option]
  schema_column : schema_column list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_dataset_azure_blob) -> ()

let yojson_of_azurerm_data_factory_dataset_azure_blob =
  (function
   | {
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       dynamic_filename_enabled = v_dynamic_filename_enabled;
       dynamic_path_enabled = v_dynamic_path_enabled;
       filename = v_filename;
       folder = v_folder;
       id = v_id;
       linked_service_name = v_linked_service_name;
       name = v_name;
       parameters = v_parameters;
       path = v_path;
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
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "additional_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_dataset_azure_blob ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_dataset_azure_blob

[@@@deriving.end]

let schema_column ?description ?type_ ~name () : schema_column =
  { description; name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_dataset_azure_blob ?additional_properties
    ?annotations ?description ?dynamic_filename_enabled
    ?dynamic_path_enabled ?filename ?folder ?id ?parameters ?path
    ?(schema_column = []) ?timeouts ~data_factory_id
    ~linked_service_name ~name () :
    azurerm_data_factory_dataset_azure_blob =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    dynamic_filename_enabled;
    dynamic_path_enabled;
    filename;
    folder;
    id;
    linked_service_name;
    name;
    parameters;
    path;
    schema_column;
    timeouts;
  }

type t = {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  dynamic_filename_enabled : bool prop;
  dynamic_path_enabled : bool prop;
  filename : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  path : string prop;
}

let make ?additional_properties ?annotations ?description
    ?dynamic_filename_enabled ?dynamic_path_enabled ?filename ?folder
    ?id ?parameters ?path ?(schema_column = []) ?timeouts
    ~data_factory_id ~linked_service_name ~name __id =
  let __type = "azurerm_data_factory_dataset_azure_blob" in
  let __attrs =
    ({
       tf_name = __id;
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       dynamic_filename_enabled =
         Prop.computed __type __id "dynamic_filename_enabled";
       dynamic_path_enabled =
         Prop.computed __type __id "dynamic_path_enabled";
       filename = Prop.computed __type __id "filename";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       linked_service_name =
         Prop.computed __type __id "linked_service_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       path = Prop.computed __type __id "path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_dataset_azure_blob
        (azurerm_data_factory_dataset_azure_blob
           ?additional_properties ?annotations ?description
           ?dynamic_filename_enabled ?dynamic_path_enabled ?filename
           ?folder ?id ?parameters ?path ~schema_column ?timeouts
           ~data_factory_id ~linked_service_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?dynamic_filename_enabled ?dynamic_path_enabled
    ?filename ?folder ?id ?parameters ?path ?(schema_column = [])
    ?timeouts ~data_factory_id ~linked_service_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description
      ?dynamic_filename_enabled ?dynamic_path_enabled ?filename
      ?folder ?id ?parameters ?path ~schema_column ?timeouts
      ~data_factory_id ~linked_service_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
