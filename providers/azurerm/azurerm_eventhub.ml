(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capture_description__destination = {
  archive_name_format : string prop;
  blob_container_name : string prop;
  name : string prop;
  storage_account_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capture_description__destination) -> ()

let yojson_of_capture_description__destination =
  (function
   | {
       archive_name_format = v_archive_name_format;
       blob_container_name = v_blob_container_name;
       name = v_name;
       storage_account_id = v_storage_account_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_blob_container_name
         in
         ("blob_container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_archive_name_format
         in
         ("archive_name_format", arg) :: bnds
       in
       `Assoc bnds
    : capture_description__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capture_description__destination

[@@@deriving.end]

type capture_description = {
  enabled : bool prop;
  encoding : string prop;
  interval_in_seconds : float prop option; [@option]
  size_limit_in_bytes : float prop option; [@option]
  skip_empty_archives : bool prop option; [@option]
  destination : capture_description__destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capture_description) -> ()

let yojson_of_capture_description =
  (function
   | {
       enabled = v_enabled;
       encoding = v_encoding;
       interval_in_seconds = v_interval_in_seconds;
       size_limit_in_bytes = v_size_limit_in_bytes;
       skip_empty_archives = v_skip_empty_archives;
       destination = v_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_capture_description__destination
             v_destination
         in
         ("destination", arg) :: bnds
       in
       let bnds =
         match v_skip_empty_archives with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_empty_archives", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size_limit_in_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_limit_in_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_encoding in
         ("encoding", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : capture_description -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capture_description

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

type azurerm_eventhub = {
  id : string prop option; [@option]
  message_retention : float prop;
  name : string prop;
  namespace_name : string prop;
  partition_count : float prop;
  resource_group_name : string prop;
  status : string prop option; [@option]
  capture_description : capture_description list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_eventhub) -> ()

let yojson_of_azurerm_eventhub =
  (function
   | {
       id = v_id;
       message_retention = v_message_retention;
       name = v_name;
       namespace_name = v_namespace_name;
       partition_count = v_partition_count;
       resource_group_name = v_resource_group_name;
       status = v_status;
       capture_description = v_capture_description;
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
           yojson_of_list yojson_of_capture_description
             v_capture_description
         in
         ("capture_description", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_partition_count
         in
         ("partition_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_message_retention
         in
         ("message_retention", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_eventhub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventhub

[@@@deriving.end]

let capture_description__destination ~archive_name_format
    ~blob_container_name ~name ~storage_account_id () :
    capture_description__destination =
  {
    archive_name_format;
    blob_container_name;
    name;
    storage_account_id;
  }

let capture_description ?interval_in_seconds ?size_limit_in_bytes
    ?skip_empty_archives ~enabled ~encoding ~destination () :
    capture_description =
  {
    enabled;
    encoding;
    interval_in_seconds;
    size_limit_in_bytes;
    skip_empty_archives;
    destination;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub ?id ?status ?(capture_description = [])
    ?timeouts ~message_retention ~name ~namespace_name
    ~partition_count ~resource_group_name () : azurerm_eventhub =
  {
    id;
    message_retention;
    name;
    namespace_name;
    partition_count;
    resource_group_name;
    status;
    capture_description;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  message_retention : float prop;
  name : string prop;
  namespace_name : string prop;
  partition_count : float prop;
  partition_ids : string list prop;
  resource_group_name : string prop;
  status : string prop;
}

let make ?id ?status ?(capture_description = []) ?timeouts
    ~message_retention ~name ~namespace_name ~partition_count
    ~resource_group_name __id =
  let __type = "azurerm_eventhub" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       message_retention =
         Prop.computed __type __id "message_retention";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       partition_count = Prop.computed __type __id "partition_count";
       partition_ids = Prop.computed __type __id "partition_ids";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub
        (azurerm_eventhub ?id ?status ~capture_description ?timeouts
           ~message_retention ~name ~namespace_name ~partition_count
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ?(capture_description = [])
    ?timeouts ~message_retention ~name ~namespace_name
    ~partition_count ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~capture_description ?timeouts
      ~message_retention ~name ~namespace_name ~partition_count
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
