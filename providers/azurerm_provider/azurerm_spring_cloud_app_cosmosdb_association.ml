(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_app_cosmosdb_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_cosmosdb_association__timeouts *)

type azurerm_spring_cloud_app_cosmosdb_association = {
  api_type : string;  (** api_type *)
  cosmosdb_access_key : string;  (** cosmosdb_access_key *)
  cosmosdb_account_id : string;  (** cosmosdb_account_id *)
  cosmosdb_cassandra_keyspace_name : string option; [@option]
      (** cosmosdb_cassandra_keyspace_name *)
  cosmosdb_gremlin_database_name : string option; [@option]
      (** cosmosdb_gremlin_database_name *)
  cosmosdb_gremlin_graph_name : string option; [@option]
      (** cosmosdb_gremlin_graph_name *)
  cosmosdb_mongo_database_name : string option; [@option]
      (** cosmosdb_mongo_database_name *)
  cosmosdb_sql_database_name : string option; [@option]
      (** cosmosdb_sql_database_name *)
  name : string;  (** name *)
  spring_cloud_app_id : string;  (** spring_cloud_app_id *)
  timeouts :
    azurerm_spring_cloud_app_cosmosdb_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_cosmosdb_association *)

let azurerm_spring_cloud_app_cosmosdb_association
    ?cosmosdb_cassandra_keyspace_name ?cosmosdb_gremlin_database_name
    ?cosmosdb_gremlin_graph_name ?cosmosdb_mongo_database_name
    ?cosmosdb_sql_database_name ?timeouts ~api_type
    ~cosmosdb_access_key ~cosmosdb_account_id ~name
    ~spring_cloud_app_id __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_app_cosmosdb_association"
  in
  let __resource =
    {
      api_type;
      cosmosdb_access_key;
      cosmosdb_account_id;
      cosmosdb_cassandra_keyspace_name;
      cosmosdb_gremlin_database_name;
      cosmosdb_gremlin_graph_name;
      cosmosdb_mongo_database_name;
      cosmosdb_sql_database_name;
      name;
      spring_cloud_app_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app_cosmosdb_association
       __resource);
  ()
