(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_container__autoscale_settings = {
  max_throughput : float option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__autoscale_settings *)

type azurerm_cosmosdb_sql_container__conflict_resolution_policy = {
  conflict_resolution_path : string option; [@option]
      (** conflict_resolution_path *)
  conflict_resolution_procedure : string option; [@option]
      (** conflict_resolution_procedure *)
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__conflict_resolution_policy *)

type azurerm_cosmosdb_sql_container__indexing_policy__composite_index__index = {
  order : string;  (** order *)
  path : string;  (** path *)
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
  path : string;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy__excluded_path *)

type azurerm_cosmosdb_sql_container__indexing_policy__included_path = {
  path : string;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy__included_path *)

type azurerm_cosmosdb_sql_container__indexing_policy__spatial_index = {
  path : string;  (** path *)
  types : string list;  (** types *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__indexing_policy__spatial_index *)

type azurerm_cosmosdb_sql_container__indexing_policy = {
  indexing_mode : string option; [@option]  (** indexing_mode *)
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
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__timeouts *)

type azurerm_cosmosdb_sql_container__unique_key = {
  paths : string list;  (** paths *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container__unique_key *)

type azurerm_cosmosdb_sql_container = {
  account_name : string;  (** account_name *)
  analytical_storage_ttl : float option; [@option]
      (** analytical_storage_ttl *)
  database_name : string;  (** database_name *)
  name : string;  (** name *)
  partition_key_path : string;  (** partition_key_path *)
  partition_key_version : float option; [@option]
      (** partition_key_version *)
  resource_group_name : string;  (** resource_group_name *)
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
    ?partition_key_version ?timeouts ~account_name ~database_name
    ~name ~partition_key_path ~resource_group_name
    ~autoscale_settings ~conflict_resolution_policy ~indexing_policy
    ~unique_key __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_container" in
  let __resource =
    {
      account_name;
      analytical_storage_ttl;
      database_name;
      name;
      partition_key_path;
      partition_key_version;
      resource_group_name;
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
