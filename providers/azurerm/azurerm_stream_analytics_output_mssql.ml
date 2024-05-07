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

type azurerm_stream_analytics_output_mssql = {
  authentication_mode : string prop option; [@option]
  database : string prop;
  id : string prop option; [@option]
  max_batch_count : float prop option; [@option]
  max_writer_count : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  user : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_output_mssql) -> ()

let yojson_of_azurerm_stream_analytics_output_mssql =
  (function
   | {
       authentication_mode = v_authentication_mode;
       database = v_database;
       id = v_id;
       max_batch_count = v_max_batch_count;
       max_writer_count = v_max_writer_count;
       name = v_name;
       password = v_password;
       resource_group_name = v_resource_group_name;
       server = v_server;
       stream_analytics_job_name = v_stream_analytics_job_name;
       table = v_table;
       user = v_user;
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
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
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
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_writer_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_writer_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_batch_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_batch_count", arg in
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
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       let bnds =
         match v_authentication_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_output_mssql ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_output_mssql

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_mssql ?authentication_mode ?id
    ?max_batch_count ?max_writer_count ?password ?user ?timeouts
    ~database ~name ~resource_group_name ~server
    ~stream_analytics_job_name ~table () :
    azurerm_stream_analytics_output_mssql =
  {
    authentication_mode;
    database;
    id;
    max_batch_count;
    max_writer_count;
    name;
    password;
    resource_group_name;
    server;
    stream_analytics_job_name;
    table;
    user;
    timeouts;
  }

type t = {
  tf_name : string;
  authentication_mode : string prop;
  database : string prop;
  id : string prop;
  max_batch_count : float prop;
  max_writer_count : float prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  user : string prop;
}

let make ?authentication_mode ?id ?max_batch_count ?max_writer_count
    ?password ?user ?timeouts ~database ~name ~resource_group_name
    ~server ~stream_analytics_job_name ~table __id =
  let __type = "azurerm_stream_analytics_output_mssql" in
  let __attrs =
    ({
       tf_name = __id;
       authentication_mode =
         Prop.computed __type __id "authentication_mode";
       database = Prop.computed __type __id "database";
       id = Prop.computed __type __id "id";
       max_batch_count = Prop.computed __type __id "max_batch_count";
       max_writer_count =
         Prop.computed __type __id "max_writer_count";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server = Prop.computed __type __id "server";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
       table = Prop.computed __type __id "table";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_mssql
        (azurerm_stream_analytics_output_mssql ?authentication_mode
           ?id ?max_batch_count ?max_writer_count ?password ?user
           ?timeouts ~database ~name ~resource_group_name ~server
           ~stream_analytics_job_name ~table ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_mode ?id ?max_batch_count
    ?max_writer_count ?password ?user ?timeouts ~database ~name
    ~resource_group_name ~server ~stream_analytics_job_name ~table
    __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_mode ?id ?max_batch_count ?max_writer_count
      ?password ?user ?timeouts ~database ~name ~resource_group_name
      ~server ~stream_analytics_job_name ~table __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
