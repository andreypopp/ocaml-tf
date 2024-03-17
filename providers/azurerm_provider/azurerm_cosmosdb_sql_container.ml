(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_container__autoscale_settings = {
  max_throughput : float prop option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__autoscale_settings *)

type azurerm_cosmosdb_sql_container__conflict_resolution_policy = {
  conflict_resolution_path : string prop option; [@option]
      (** conflict_resolution_path *)
  conflict_resolution_procedure : string prop option; [@option]
      (** conflict_resolution_procedure *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__conflict_resolution_policy *)

type azurerm_cosmosdb_sql_container__indexing_policy__composite_index__index = {
  order : string prop;  (** order *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy__composite_index__index *)

type azurerm_cosmosdb_sql_container__indexing_policy__composite_index = {
  index :
    azurerm_cosmosdb_sql_container__indexing_policy__composite_index__index
    list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy__composite_index *)

type azurerm_cosmosdb_sql_container__indexing_policy__excluded_path = {
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy__excluded_path *)

type azurerm_cosmosdb_sql_container__indexing_policy__included_path = {
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy__included_path *)

type azurerm_cosmosdb_sql_container__indexing_policy__spatial_index = {
  path : string prop;  (** path *)
  types : string prop list;  (** types *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy__spatial_index *)

type azurerm_cosmosdb_sql_container__indexing_policy = {
  indexing_mode : string prop option; [@option]  (** indexing_mode *)
  composite_index :
    azurerm_cosmosdb_sql_container__indexing_policy__composite_index
    list;
  excluded_path :
    azurerm_cosmosdb_sql_container__indexing_policy__excluded_path
    list;
  included_path :
    azurerm_cosmosdb_sql_container__indexing_policy__included_path
    list;
  spatial_index :
    azurerm_cosmosdb_sql_container__indexing_policy__spatial_index
    list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy *)

type azurerm_cosmosdb_sql_container__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__timeouts *)

type azurerm_cosmosdb_sql_container__unique_key = {
  paths : string prop list;  (** paths *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__unique_key *)

type azurerm_cosmosdb_sql_container = {
  account_name : string prop;  (** account_name *)
  analytical_storage_ttl : float prop option; [@option]
      (** analytical_storage_ttl *)
  database_name : string prop;  (** database_name *)
  default_ttl : float prop option; [@option]  (** default_ttl *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_key_path : string prop;  (** partition_key_path *)
  partition_key_version : float prop option; [@option]
      (** partition_key_version *)
  resource_group_name : string prop;  (** resource_group_name *)
  throughput : float prop option; [@option]  (** throughput *)
  autoscale_settings :
    azurerm_cosmosdb_sql_container__autoscale_settings list;
  conflict_resolution_policy :
    azurerm_cosmosdb_sql_container__conflict_resolution_policy list;
  indexing_policy :
    azurerm_cosmosdb_sql_container__indexing_policy list;
  timeouts : azurerm_cosmosdb_sql_container__timeouts option;
  unique_key : azurerm_cosmosdb_sql_container__unique_key list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container *)

let azurerm_cosmosdb_sql_container ?analytical_storage_ttl
    ?default_ttl ?id ?partition_key_version ?throughput ?timeouts
    ~account_name ~database_name ~name ~partition_key_path
    ~resource_group_name ~autoscale_settings
    ~conflict_resolution_policy ~indexing_policy ~unique_key
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_container" in
  let __resource =
    {
      account_name;
      analytical_storage_ttl;
      database_name;
      default_ttl;
      id;
      name;
      partition_key_path;
      partition_key_version;
      resource_group_name;
      throughput;
      autoscale_settings;
      conflict_resolution_policy;
      indexing_policy;
      timeouts;
      unique_key;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_container __resource);
  ()
