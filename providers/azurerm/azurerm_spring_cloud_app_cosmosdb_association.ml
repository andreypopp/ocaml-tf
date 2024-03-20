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

type azurerm_spring_cloud_app_cosmosdb_association = {
  api_type : string prop;
  cosmosdb_access_key : string prop;
  cosmosdb_account_id : string prop;
  cosmosdb_cassandra_keyspace_name : string prop option; [@option]
  cosmosdb_gremlin_database_name : string prop option; [@option]
  cosmosdb_gremlin_graph_name : string prop option; [@option]
  cosmosdb_mongo_database_name : string prop option; [@option]
  cosmosdb_sql_database_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  spring_cloud_app_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_app_cosmosdb_association) -> ()

let yojson_of_azurerm_spring_cloud_app_cosmosdb_association =
  (function
   | {
       api_type = v_api_type;
       cosmosdb_access_key = v_cosmosdb_access_key;
       cosmosdb_account_id = v_cosmosdb_account_id;
       cosmosdb_cassandra_keyspace_name =
         v_cosmosdb_cassandra_keyspace_name;
       cosmosdb_gremlin_database_name =
         v_cosmosdb_gremlin_database_name;
       cosmosdb_gremlin_graph_name = v_cosmosdb_gremlin_graph_name;
       cosmosdb_mongo_database_name = v_cosmosdb_mongo_database_name;
       cosmosdb_sql_database_name = v_cosmosdb_sql_database_name;
       id = v_id;
       name = v_name;
       spring_cloud_app_id = v_spring_cloud_app_id;
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
           yojson_of_prop yojson_of_string v_spring_cloud_app_id
         in
         ("spring_cloud_app_id", arg) :: bnds
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
         match v_cosmosdb_sql_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cosmosdb_sql_database_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cosmosdb_mongo_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cosmosdb_mongo_database_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cosmosdb_gremlin_graph_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cosmosdb_gremlin_graph_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cosmosdb_gremlin_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cosmosdb_gremlin_database_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cosmosdb_cassandra_keyspace_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cosmosdb_cassandra_keyspace_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cosmosdb_account_id
         in
         ("cosmosdb_account_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cosmosdb_access_key
         in
         ("cosmosdb_access_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_type in
         ("api_type", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_app_cosmosdb_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_app_cosmosdb_association

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_app_cosmosdb_association
    ?cosmosdb_cassandra_keyspace_name ?cosmosdb_gremlin_database_name
    ?cosmosdb_gremlin_graph_name ?cosmosdb_mongo_database_name
    ?cosmosdb_sql_database_name ?id ?timeouts ~api_type
    ~cosmosdb_access_key ~cosmosdb_account_id ~name
    ~spring_cloud_app_id () :
    azurerm_spring_cloud_app_cosmosdb_association =
  {
    api_type;
    cosmosdb_access_key;
    cosmosdb_account_id;
    cosmosdb_cassandra_keyspace_name;
    cosmosdb_gremlin_database_name;
    cosmosdb_gremlin_graph_name;
    cosmosdb_mongo_database_name;
    cosmosdb_sql_database_name;
    id;
    name;
    spring_cloud_app_id;
    timeouts;
  }

type t = {
  api_type : string prop;
  cosmosdb_access_key : string prop;
  cosmosdb_account_id : string prop;
  cosmosdb_cassandra_keyspace_name : string prop;
  cosmosdb_gremlin_database_name : string prop;
  cosmosdb_gremlin_graph_name : string prop;
  cosmosdb_mongo_database_name : string prop;
  cosmosdb_sql_database_name : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_app_id : string prop;
}

let make ?cosmosdb_cassandra_keyspace_name
    ?cosmosdb_gremlin_database_name ?cosmosdb_gremlin_graph_name
    ?cosmosdb_mongo_database_name ?cosmosdb_sql_database_name ?id
    ?timeouts ~api_type ~cosmosdb_access_key ~cosmosdb_account_id
    ~name ~spring_cloud_app_id __id =
  let __type = "azurerm_spring_cloud_app_cosmosdb_association" in
  let __attrs =
    ({
       api_type = Prop.computed __type __id "api_type";
       cosmosdb_access_key =
         Prop.computed __type __id "cosmosdb_access_key";
       cosmosdb_account_id =
         Prop.computed __type __id "cosmosdb_account_id";
       cosmosdb_cassandra_keyspace_name =
         Prop.computed __type __id "cosmosdb_cassandra_keyspace_name";
       cosmosdb_gremlin_database_name =
         Prop.computed __type __id "cosmosdb_gremlin_database_name";
       cosmosdb_gremlin_graph_name =
         Prop.computed __type __id "cosmosdb_gremlin_graph_name";
       cosmosdb_mongo_database_name =
         Prop.computed __type __id "cosmosdb_mongo_database_name";
       cosmosdb_sql_database_name =
         Prop.computed __type __id "cosmosdb_sql_database_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_app_cosmosdb_association
        (azurerm_spring_cloud_app_cosmosdb_association
           ?cosmosdb_cassandra_keyspace_name
           ?cosmosdb_gremlin_database_name
           ?cosmosdb_gremlin_graph_name ?cosmosdb_mongo_database_name
           ?cosmosdb_sql_database_name ?id ?timeouts ~api_type
           ~cosmosdb_access_key ~cosmosdb_account_id ~name
           ~spring_cloud_app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cosmosdb_cassandra_keyspace_name
    ?cosmosdb_gremlin_database_name ?cosmosdb_gremlin_graph_name
    ?cosmosdb_mongo_database_name ?cosmosdb_sql_database_name ?id
    ?timeouts ~api_type ~cosmosdb_access_key ~cosmosdb_account_id
    ~name ~spring_cloud_app_id __id =
  let (r : _ Tf_core.resource) =
    make ?cosmosdb_cassandra_keyspace_name
      ?cosmosdb_gremlin_database_name ?cosmosdb_gremlin_graph_name
      ?cosmosdb_mongo_database_name ?cosmosdb_sql_database_name ?id
      ?timeouts ~api_type ~cosmosdb_access_key ~cosmosdb_account_id
      ~name ~spring_cloud_app_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
