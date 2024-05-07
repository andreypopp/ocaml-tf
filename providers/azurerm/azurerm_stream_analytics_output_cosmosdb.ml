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

type azurerm_stream_analytics_output_cosmosdb = {
  container_name : string prop;
  cosmosdb_account_key : string prop;
  cosmosdb_sql_database_id : string prop;
  document_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  partition_key : string prop option; [@option]
  stream_analytics_job_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_output_cosmosdb) -> ()

let yojson_of_azurerm_stream_analytics_output_cosmosdb =
  (function
   | {
       container_name = v_container_name;
       cosmosdb_account_key = v_cosmosdb_account_key;
       cosmosdb_sql_database_id = v_cosmosdb_sql_database_id;
       document_id = v_document_id;
       id = v_id;
       name = v_name;
       partition_key = v_partition_key;
       stream_analytics_job_id = v_stream_analytics_job_id;
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
           yojson_of_prop yojson_of_string v_stream_analytics_job_id
         in
         ("stream_analytics_job_id", arg) :: bnds
       in
       let bnds =
         match v_partition_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key", arg in
             bnd :: bnds
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
         match v_document_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cosmosdb_sql_database_id
         in
         ("cosmosdb_sql_database_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cosmosdb_account_key
         in
         ("cosmosdb_account_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_output_cosmosdb ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_output_cosmosdb

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_cosmosdb ?document_id ?id
    ?partition_key ?timeouts ~container_name ~cosmosdb_account_key
    ~cosmosdb_sql_database_id ~name ~stream_analytics_job_id () :
    azurerm_stream_analytics_output_cosmosdb =
  {
    container_name;
    cosmosdb_account_key;
    cosmosdb_sql_database_id;
    document_id;
    id;
    name;
    partition_key;
    stream_analytics_job_id;
    timeouts;
  }

type t = {
  tf_name : string;
  container_name : string prop;
  cosmosdb_account_key : string prop;
  cosmosdb_sql_database_id : string prop;
  document_id : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  stream_analytics_job_id : string prop;
}

let make ?document_id ?id ?partition_key ?timeouts ~container_name
    ~cosmosdb_account_key ~cosmosdb_sql_database_id ~name
    ~stream_analytics_job_id __id =
  let __type = "azurerm_stream_analytics_output_cosmosdb" in
  let __attrs =
    ({
       tf_name = __id;
       container_name = Prop.computed __type __id "container_name";
       cosmosdb_account_key =
         Prop.computed __type __id "cosmosdb_account_key";
       cosmosdb_sql_database_id =
         Prop.computed __type __id "cosmosdb_sql_database_id";
       document_id = Prop.computed __type __id "document_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_key = Prop.computed __type __id "partition_key";
       stream_analytics_job_id =
         Prop.computed __type __id "stream_analytics_job_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_cosmosdb
        (azurerm_stream_analytics_output_cosmosdb ?document_id ?id
           ?partition_key ?timeouts ~container_name
           ~cosmosdb_account_key ~cosmosdb_sql_database_id ~name
           ~stream_analytics_job_id ());
    attrs = __attrs;
  }

let register ?tf_module ?document_id ?id ?partition_key ?timeouts
    ~container_name ~cosmosdb_account_key ~cosmosdb_sql_database_id
    ~name ~stream_analytics_job_id __id =
  let (r : _ Tf_core.resource) =
    make ?document_id ?id ?partition_key ?timeouts ~container_name
      ~cosmosdb_account_key ~cosmosdb_sql_database_id ~name
      ~stream_analytics_job_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
