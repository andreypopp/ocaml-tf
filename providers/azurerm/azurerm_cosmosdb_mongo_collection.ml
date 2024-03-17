(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_mongo_collection__autoscale_settings = {
  max_throughput : float prop option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection__autoscale_settings *)

type azurerm_cosmosdb_mongo_collection__index = {
  keys : string prop list;  (** keys *)
  unique : bool prop option; [@option]  (** unique *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection__index *)

type azurerm_cosmosdb_mongo_collection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection__timeouts *)

type azurerm_cosmosdb_mongo_collection__system_indexes = {
  keys : string prop list;  (** keys *)
  unique : bool prop;  (** unique *)
}
[@@deriving yojson_of]

type azurerm_cosmosdb_mongo_collection = {
  account_name : string prop;  (** account_name *)
  analytical_storage_ttl : float prop option; [@option]
      (** analytical_storage_ttl *)
  database_name : string prop;  (** database_name *)
  default_ttl_seconds : float prop option; [@option]
      (** default_ttl_seconds *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  shard_key : string prop option; [@option]  (** shard_key *)
  throughput : float prop option; [@option]  (** throughput *)
  autoscale_settings :
    azurerm_cosmosdb_mongo_collection__autoscale_settings list;
  index : azurerm_cosmosdb_mongo_collection__index list;
  timeouts : azurerm_cosmosdb_mongo_collection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection *)

type t = {
  account_name : string prop;
  analytical_storage_ttl : float prop;
  database_name : string prop;
  default_ttl_seconds : float prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  shard_key : string prop;
  system_indexes :
    azurerm_cosmosdb_mongo_collection__system_indexes list prop;
  throughput : float prop;
}

let azurerm_cosmosdb_mongo_collection ?analytical_storage_ttl
    ?default_ttl_seconds ?id ?shard_key ?throughput ?timeouts
    ~account_name ~database_name ~name ~resource_group_name
    ~autoscale_settings ~index __resource_id =
  let __resource_type = "azurerm_cosmosdb_mongo_collection" in
  let __resource =
    ({
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
      : azurerm_cosmosdb_mongo_collection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_mongo_collection __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       analytical_storage_ttl =
         Prop.computed __resource_type __resource_id
           "analytical_storage_ttl";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       default_ttl_seconds =
         Prop.computed __resource_type __resource_id
           "default_ttl_seconds";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       shard_key =
         Prop.computed __resource_type __resource_id "shard_key";
       system_indexes =
         Prop.computed __resource_type __resource_id "system_indexes";
       throughput =
         Prop.computed __resource_type __resource_id "throughput";
     }
      : t)
  in
  __resource_attributes
