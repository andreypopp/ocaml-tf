(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type serialization = {
  encoding : string prop option; [@option]
  field_delimiter : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serialization) -> ()

let yojson_of_serialization =
  (function
   | {
       encoding = v_encoding;
       field_delimiter = v_field_delimiter;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_field_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_delimiter", arg in
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
       `Assoc bnds
    : serialization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serialization

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

type azurerm_stream_analytics_stream_input_blob = {
  date_format : string prop;
  id : string prop option; [@option]
  name : string prop;
  path_pattern : string prop;
  resource_group_name : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  stream_analytics_job_name : string prop;
  time_format : string prop;
  serialization : serialization list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_stream_input_blob) -> ()

let yojson_of_azurerm_stream_analytics_stream_input_blob =
  (function
   | {
       date_format = v_date_format;
       id = v_id;
       name = v_name;
       path_pattern = v_path_pattern;
       resource_group_name = v_resource_group_name;
       storage_account_key = v_storage_account_key;
       storage_account_name = v_storage_account_name;
       storage_container_name = v_storage_container_name;
       stream_analytics_job_name = v_stream_analytics_job_name;
       time_format = v_time_format;
       serialization = v_serialization;
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
           yojson_of_list yojson_of_serialization v_serialization
         in
         ("serialization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_format in
         ("time_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_stream_analytics_job_name
         in
         ("stream_analytics_job_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_container_name
         in
         ("storage_container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_key
         in
         ("storage_account_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path_pattern in
         ("path_pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_date_format in
         ("date_format", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_stream_input_blob ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_stream_input_blob

[@@@deriving.end]

let serialization ?encoding ?field_delimiter ~type_ () :
    serialization =
  { encoding; field_delimiter; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_stream_input_blob ?id ?timeouts
    ~date_format ~name ~path_pattern ~resource_group_name
    ~storage_account_key ~storage_account_name
    ~storage_container_name ~stream_analytics_job_name ~time_format
    ~serialization () : azurerm_stream_analytics_stream_input_blob =
  {
    date_format;
    id;
    name;
    path_pattern;
    resource_group_name;
    storage_account_key;
    storage_account_name;
    storage_container_name;
    stream_analytics_job_name;
    time_format;
    serialization;
    timeouts;
  }

type t = {
  tf_name : string;
  date_format : string prop;
  id : string prop;
  name : string prop;
  path_pattern : string prop;
  resource_group_name : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  stream_analytics_job_name : string prop;
  time_format : string prop;
}

let make ?id ?timeouts ~date_format ~name ~path_pattern
    ~resource_group_name ~storage_account_key ~storage_account_name
    ~storage_container_name ~stream_analytics_job_name ~time_format
    ~serialization __id =
  let __type = "azurerm_stream_analytics_stream_input_blob" in
  let __attrs =
    ({
       tf_name = __id;
       date_format = Prop.computed __type __id "date_format";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path_pattern = Prop.computed __type __id "path_pattern";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_key =
         Prop.computed __type __id "storage_account_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_container_name =
         Prop.computed __type __id "storage_container_name";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
       time_format = Prop.computed __type __id "time_format";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_stream_input_blob
        (azurerm_stream_analytics_stream_input_blob ?id ?timeouts
           ~date_format ~name ~path_pattern ~resource_group_name
           ~storage_account_key ~storage_account_name
           ~storage_container_name ~stream_analytics_job_name
           ~time_format ~serialization ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~date_format ~name
    ~path_pattern ~resource_group_name ~storage_account_key
    ~storage_account_name ~storage_container_name
    ~stream_analytics_job_name ~time_format ~serialization __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~date_format ~name ~path_pattern
      ~resource_group_name ~storage_account_key ~storage_account_name
      ~storage_container_name ~stream_analytics_job_name ~time_format
      ~serialization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
