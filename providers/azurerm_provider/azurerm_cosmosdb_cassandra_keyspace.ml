(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_keyspace__autoscale_settings = {
  max_throughput : float option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_keyspace__autoscale_settings *)

type azurerm_cosmosdb_cassandra_keyspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_keyspace__timeouts *)

type azurerm_cosmosdb_cassandra_keyspace = {
  account_name : string;  (** account_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  throughput : float option; [@option]  (** throughput *)
  autoscale_settings :
    azurerm_cosmosdb_cassandra_keyspace__autoscale_settings list;
  timeouts : azurerm_cosmosdb_cassandra_keyspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_keyspace *)

let azurerm_cosmosdb_cassandra_keyspace ?id ?throughput ?timeouts
    ~account_name ~name ~resource_group_name ~autoscale_settings
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_cassandra_keyspace" in
  let __resource =
    {
      account_name;
      id;
      name;
      resource_group_name;
      throughput;
      autoscale_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_cassandra_keyspace __resource);
  ()
