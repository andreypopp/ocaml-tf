(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_mongo_collection__autoscale_settings = {
  max_throughput : float option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection__autoscale_settings *)

type azurerm_cosmosdb_mongo_collection__index = {
  keys : string list;  (** keys *)
  unique : bool option; [@option]  (** unique *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection__index *)

type azurerm_cosmosdb_mongo_collection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection__timeouts *)

type azurerm_cosmosdb_mongo_collection__system_indexes = {
  keys : string list;  (** keys *)
  unique : bool;  (** unique *)
}
[@@deriving yojson_of]

type azurerm_cosmosdb_mongo_collection = {
  account_name : string;  (** account_name *)
  analytical_storage_ttl : float option; [@option]
      (** analytical_storage_ttl *)
  database_name : string;  (** database_name *)
  default_ttl_seconds : float option; [@option]
      (** default_ttl_seconds *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  shard_key : string option; [@option]  (** shard_key *)
  throughput : float option; [@option]  (** throughput *)
  autoscale_settings :
    azurerm_cosmosdb_mongo_collection__autoscale_settings list;
  index : azurerm_cosmosdb_mongo_collection__index list;
  timeouts : azurerm_cosmosdb_mongo_collection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection *)

let azurerm_cosmosdb_mongo_collection ?analytical_storage_ttl
    ?default_ttl_seconds ?id ?shard_key ?throughput ?timeouts
    ~account_name ~database_name ~name ~resource_group_name
    ~autoscale_settings ~index __resource_id =
  let __resource_type = "azurerm_cosmosdb_mongo_collection" in
  let __resource =
    {
      account_name;
      analytical_storage_ttl;
      database_name;
      default_ttl_seconds;
      id;
      name;
      resource_group_name;
      shard_key;
      throughput;
      autoscale_settings;
      index;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_mongo_collection __resource);
  ()
