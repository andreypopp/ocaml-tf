(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_app_cosmosdb_association = {
  api_type : string prop;  (** api_type *)
  cosmosdb_access_key : string prop;  (** cosmosdb_access_key *)
  cosmosdb_account_id : string prop;  (** cosmosdb_account_id *)
  cosmosdb_cassandra_keyspace_name : string prop option; [@option]
      (** cosmosdb_cassandra_keyspace_name *)
  cosmosdb_gremlin_database_name : string prop option; [@option]
      (** cosmosdb_gremlin_database_name *)
  cosmosdb_gremlin_graph_name : string prop option; [@option]
      (** cosmosdb_gremlin_graph_name *)
  cosmosdb_mongo_database_name : string prop option; [@option]
      (** cosmosdb_mongo_database_name *)
  cosmosdb_sql_database_name : string prop option; [@option]
      (** cosmosdb_sql_database_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_cosmosdb_association *)

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
