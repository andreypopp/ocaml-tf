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

type azurerm_stream_analytics_reference_input_mssql = {
  database : string prop;
  delta_snapshot_query : string prop option; [@option]
  full_snapshot_query : string prop;
  id : string prop option; [@option]
  name : string prop;
  password : string prop;
  refresh_interval_duration : string prop option; [@option]
  refresh_type : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop option; [@option]
  username : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_stream_analytics_reference_input_mssql) -> ()

let yojson_of_azurerm_stream_analytics_reference_input_mssql =
  (function
   | {
       database = v_database;
       delta_snapshot_query = v_delta_snapshot_query;
       full_snapshot_query = v_full_snapshot_query;
       id = v_id;
       name = v_name;
       password = v_password;
       refresh_interval_duration = v_refresh_interval_duration;
       refresh_type = v_refresh_type;
       resource_group_name = v_resource_group_name;
       server = v_server;
       stream_analytics_job_name = v_stream_analytics_job_name;
       table = v_table;
       username = v_username;
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
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_table with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_stream_analytics_job_name
         in
         ("stream_analytics_job_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_refresh_type in
         ("refresh_type", arg) :: bnds
       in
       let bnds =
         match v_refresh_interval_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_interval_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_full_snapshot_query
         in
         ("full_snapshot_query", arg) :: bnds
       in
       let bnds =
         match v_delta_snapshot_query with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delta_snapshot_query", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_reference_input_mssql ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_reference_input_mssql

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_reference_input_mssql
    ?delta_snapshot_query ?id ?refresh_interval_duration ?table
    ?timeouts ~database ~full_snapshot_query ~name ~password
    ~refresh_type ~resource_group_name ~server
    ~stream_analytics_job_name ~username () :
    azurerm_stream_analytics_reference_input_mssql =
  {
    database;
    delta_snapshot_query;
    full_snapshot_query;
    id;
    name;
    password;
    refresh_interval_duration;
    refresh_type;
    resource_group_name;
    server;
    stream_analytics_job_name;
    table;
    username;
    timeouts;
  }

type t = {
  database : string prop;
  delta_snapshot_query : string prop;
  full_snapshot_query : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  refresh_interval_duration : string prop;
  refresh_type : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  username : string prop;
}

let make ?delta_snapshot_query ?id ?refresh_interval_duration ?table
    ?timeouts ~database ~full_snapshot_query ~name ~password
    ~refresh_type ~resource_group_name ~server
    ~stream_analytics_job_name ~username __id =
  let __type = "azurerm_stream_analytics_reference_input_mssql" in
  let __attrs =
    ({
       database = Prop.computed __type __id "database";
       delta_snapshot_query =
         Prop.computed __type __id "delta_snapshot_query";
       full_snapshot_query =
         Prop.computed __type __id "full_snapshot_query";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       refresh_interval_duration =
         Prop.computed __type __id "refresh_interval_duration";
       refresh_type = Prop.computed __type __id "refresh_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server = Prop.computed __type __id "server";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
       table = Prop.computed __type __id "table";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_reference_input_mssql
        (azurerm_stream_analytics_reference_input_mssql
           ?delta_snapshot_query ?id ?refresh_interval_duration
           ?table ?timeouts ~database ~full_snapshot_query ~name
           ~password ~refresh_type ~resource_group_name ~server
           ~stream_analytics_job_name ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?delta_snapshot_query ?id
    ?refresh_interval_duration ?table ?timeouts ~database
    ~full_snapshot_query ~name ~password ~refresh_type
    ~resource_group_name ~server ~stream_analytics_job_name ~username
    __id =
  let (r : _ Tf_core.resource) =
    make ?delta_snapshot_query ?id ?refresh_interval_duration ?table
      ?timeouts ~database ~full_snapshot_query ~name ~password
      ~refresh_type ~resource_group_name ~server
      ~stream_analytics_job_name ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
