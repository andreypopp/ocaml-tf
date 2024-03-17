(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_table__autoscale_settings = {
  max_throughput : float prop option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_table__autoscale_settings *)

type azurerm_cosmosdb_cassandra_table__schema__cluster_key = {
  name : string prop;  (** name *)
  order_by : string prop;  (** order_by *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_table__schema__cluster_key *)

type azurerm_cosmosdb_cassandra_table__schema__column = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_table__schema__column *)

type azurerm_cosmosdb_cassandra_table__schema__partition_key = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_table__schema__partition_key *)

type azurerm_cosmosdb_cassandra_table__schema = {
  cluster_key :
    azurerm_cosmosdb_cassandra_table__schema__cluster_key list;
  column : azurerm_cosmosdb_cassandra_table__schema__column list;
  partition_key :
    azurerm_cosmosdb_cassandra_table__schema__partition_key list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_table__schema *)

type azurerm_cosmosdb_cassandra_table__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_table__timeouts *)

type azurerm_cosmosdb_cassandra_table = {
  analytical_storage_ttl : float prop option; [@option]
      (** analytical_storage_ttl *)
  cassandra_keyspace_id : string prop;  (** cassandra_keyspace_id *)
  default_ttl : float prop option; [@option]  (** default_ttl *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  throughput : float prop option; [@option]  (** throughput *)
  autoscale_settings :
    azurerm_cosmosdb_cassandra_table__autoscale_settings list;
  schema : azurerm_cosmosdb_cassandra_table__schema list;
  timeouts : azurerm_cosmosdb_cassandra_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_table *)

let azurerm_cosmosdb_cassandra_table ?analytical_storage_ttl
    ?default_ttl ?id ?throughput ?timeouts ~cassandra_keyspace_id
    ~name ~autoscale_settings ~schema __resource_id =
  let __resource_type = "azurerm_cosmosdb_cassandra_table" in
  let __resource =
    {
      analytical_storage_ttl;
      cassandra_keyspace_id;
      default_ttl;
      id;
      name;
      throughput;
      autoscale_settings;
      schema;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_cassandra_table __resource);
  ()
