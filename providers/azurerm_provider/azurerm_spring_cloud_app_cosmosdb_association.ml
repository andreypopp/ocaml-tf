(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_app_cosmosdb_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_cosmosdb_association__timeouts *)

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
  timeouts :
    azurerm_spring_cloud_app_cosmosdb_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_cosmosdb_association *)

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

let azurerm_spring_cloud_app_cosmosdb_association
    ?cosmosdb_cassandra_keyspace_name ?cosmosdb_gremlin_database_name
    ?cosmosdb_gremlin_graph_name ?cosmosdb_mongo_database_name
    ?cosmosdb_sql_database_name ?id ?timeouts ~api_type
    ~cosmosdb_access_key ~cosmosdb_account_id ~name
    ~spring_cloud_app_id __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_app_cosmosdb_association"
  in
  let __resource =
    ({
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
      : azurerm_spring_cloud_app_cosmosdb_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app_cosmosdb_association
       __resource);
  let __resource_attributes =
    ({
       api_type =
         Prop.computed __resource_type __resource_id "api_type";
       cosmosdb_access_key =
         Prop.computed __resource_type __resource_id
           "cosmosdb_access_key";
       cosmosdb_account_id =
         Prop.computed __resource_type __resource_id
           "cosmosdb_account_id";
       cosmosdb_cassandra_keyspace_name =
         Prop.computed __resource_type __resource_id
           "cosmosdb_cassandra_keyspace_name";
       cosmosdb_gremlin_database_name =
         Prop.computed __resource_type __resource_id
           "cosmosdb_gremlin_database_name";
       cosmosdb_gremlin_graph_name =
         Prop.computed __resource_type __resource_id
           "cosmosdb_gremlin_graph_name";
       cosmosdb_mongo_database_name =
         Prop.computed __resource_type __resource_id
           "cosmosdb_mongo_database_name";
       cosmosdb_sql_database_name =
         Prop.computed __resource_type __resource_id
           "cosmosdb_sql_database_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       spring_cloud_app_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_app_id";
     }
      : t)
  in
  __resource_attributes
