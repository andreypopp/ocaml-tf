(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_iothub_endpoint_storage_container = {
  authentication_type : string prop option; [@option]
  batch_frequency_in_seconds : float prop option; [@option]
  connection_string : string prop option; [@option]
  container_name : string prop;
  encoding : string prop option; [@option]
  endpoint_uri : string prop option; [@option]
  file_name_format : string prop option; [@option]
  id : string prop option; [@option]
  identity_id : string prop option; [@option]
  iothub_id : string prop;
  max_chunk_size_in_bytes : float prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_endpoint_storage_container) -> ()

let yojson_of_azurerm_iothub_endpoint_storage_container =
  (function
   | {
       authentication_type = v_authentication_type;
       batch_frequency_in_seconds = v_batch_frequency_in_seconds;
       connection_string = v_connection_string;
       container_name = v_container_name;
       encoding = v_encoding;
       endpoint_uri = v_endpoint_uri;
       file_name_format = v_file_name_format;
       id = v_id;
       identity_id = v_identity_id;
       iothub_id = v_iothub_id;
       max_chunk_size_in_bytes = v_max_chunk_size_in_bytes;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_chunk_size_in_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_chunk_size_in_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_id in
         ("iothub_id", arg) :: bnds
       in
       let bnds =
         match v_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_id", arg in
             bnd :: bnds
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
         match v_file_name_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_name_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_uri", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         match v_connection_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_frequency_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_frequency_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_endpoint_storage_container ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_endpoint_storage_container

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_endpoint_storage_container ?authentication_type
    ?batch_frequency_in_seconds ?connection_string ?encoding
    ?endpoint_uri ?file_name_format ?id ?identity_id
    ?max_chunk_size_in_bytes ?timeouts ~container_name ~iothub_id
    ~name ~resource_group_name () :
    azurerm_iothub_endpoint_storage_container =
  {
    authentication_type;
    batch_frequency_in_seconds;
    connection_string;
    container_name;
    encoding;
    endpoint_uri;
    file_name_format;
    id;
    identity_id;
    iothub_id;
    max_chunk_size_in_bytes;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  authentication_type : string prop;
  batch_frequency_in_seconds : float prop;
  connection_string : string prop;
  container_name : string prop;
  encoding : string prop;
  endpoint_uri : string prop;
  file_name_format : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  max_chunk_size_in_bytes : float prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?authentication_type ?batch_frequency_in_seconds
    ?connection_string ?encoding ?endpoint_uri ?file_name_format ?id
    ?identity_id ?max_chunk_size_in_bytes ?timeouts ~container_name
    ~iothub_id ~name ~resource_group_name __id =
  let __type = "azurerm_iothub_endpoint_storage_container" in
  let __attrs =
    ({
       authentication_type =
         Prop.computed __type __id "authentication_type";
       batch_frequency_in_seconds =
         Prop.computed __type __id "batch_frequency_in_seconds";
       connection_string =
         Prop.computed __type __id "connection_string";
       container_name = Prop.computed __type __id "container_name";
       encoding = Prop.computed __type __id "encoding";
       endpoint_uri = Prop.computed __type __id "endpoint_uri";
       file_name_format =
         Prop.computed __type __id "file_name_format";
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       iothub_id = Prop.computed __type __id "iothub_id";
       max_chunk_size_in_bytes =
         Prop.computed __type __id "max_chunk_size_in_bytes";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_endpoint_storage_container
        (azurerm_iothub_endpoint_storage_container
           ?authentication_type ?batch_frequency_in_seconds
           ?connection_string ?encoding ?endpoint_uri
           ?file_name_format ?id ?identity_id
           ?max_chunk_size_in_bytes ?timeouts ~container_name
           ~iothub_id ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_type
    ?batch_frequency_in_seconds ?connection_string ?encoding
    ?endpoint_uri ?file_name_format ?id ?identity_id
    ?max_chunk_size_in_bytes ?timeouts ~container_name ~iothub_id
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_type ?batch_frequency_in_seconds
      ?connection_string ?encoding ?endpoint_uri ?file_name_format
      ?id ?identity_id ?max_chunk_size_in_bytes ?timeouts
      ~container_name ~iothub_id ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
