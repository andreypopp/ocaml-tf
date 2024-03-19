(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type autoscale_settings = {
  max_throughput : float prop option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** autoscale_settings *)

type conflict_resolution_policy = {
  conflict_resolution_path : string prop option; [@option]
      (** conflict_resolution_path *)
  conflict_resolution_procedure : string prop option; [@option]
      (** conflict_resolution_procedure *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** conflict_resolution_policy *)

type indexing_policy__composite_index__index = {
  order : string prop;  (** order *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** indexing_policy__composite_index__index *)

type indexing_policy__composite_index = {
  index : indexing_policy__composite_index__index list;
}
[@@deriving yojson_of]
(** indexing_policy__composite_index *)

type indexing_policy__excluded_path = {
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** indexing_policy__excluded_path *)

type indexing_policy__included_path = {
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** indexing_policy__included_path *)

type indexing_policy__spatial_index = {
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** indexing_policy__spatial_index *)

type indexing_policy = {
  indexing_mode : string prop option; [@option]  (** indexing_mode *)
  composite_index : indexing_policy__composite_index list;
  excluded_path : indexing_policy__excluded_path list;
  included_path : indexing_policy__included_path list;
  spatial_index : indexing_policy__spatial_index list;
}
[@@deriving yojson_of]
(** indexing_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type unique_key = { paths : string prop list  (** paths *) }
[@@deriving yojson_of]
(** unique_key *)

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
  autoscale_settings : autoscale_settings list;
  conflict_resolution_policy : conflict_resolution_policy list;
  indexing_policy : indexing_policy list;
  timeouts : timeouts option;
  unique_key : unique_key list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_container *)

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let conflict_resolution_policy ?conflict_resolution_path
    ?conflict_resolution_procedure ~mode () :
    conflict_resolution_policy =
  { conflict_resolution_path; conflict_resolution_procedure; mode }

let indexing_policy__composite_index__index ~order ~path () :
    indexing_policy__composite_index__index =
  { order; path }

let indexing_policy__composite_index ~index () :
    indexing_policy__composite_index =
  { index }

let indexing_policy__excluded_path ~path () :
    indexing_policy__excluded_path =
  { path }

let indexing_policy__included_path ~path () :
    indexing_policy__included_path =
  { path }

let indexing_policy__spatial_index ~path () :
    indexing_policy__spatial_index =
  { path }

let indexing_policy ?indexing_mode ~composite_index ~excluded_path
    ~included_path ~spatial_index () : indexing_policy =
  {
    indexing_mode;
    composite_index;
    excluded_path;
    included_path;
    spatial_index;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let unique_key ~paths () : unique_key = { paths }

let azurerm_cosmosdb_sql_container ?analytical_storage_ttl
    ?default_ttl ?id ?partition_key_version ?throughput ?timeouts
    ~account_name ~database_name ~name ~partition_key_path
    ~resource_group_name ~autoscale_settings
    ~conflict_resolution_policy ~indexing_policy ~unique_key () :
    azurerm_cosmosdb_sql_container =
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

type t = {
  account_name : string prop;
  analytical_storage_ttl : float prop;
  database_name : string prop;
  default_ttl : float prop;
  id : string prop;
  name : string prop;
  partition_key_path : string prop;
  partition_key_version : float prop;
  resource_group_name : string prop;
  throughput : float prop;
}

let register ?tf_module ?analytical_storage_ttl ?default_ttl ?id
    ?partition_key_version ?throughput ?timeouts ~account_name
    ~database_name ~name ~partition_key_path ~resource_group_name
    ~autoscale_settings ~conflict_resolution_policy ~indexing_policy
    ~unique_key __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_container" in
  let __resource =
    azurerm_cosmosdb_sql_container ?analytical_storage_ttl
      ?default_ttl ?id ?partition_key_version ?throughput ?timeouts
      ~account_name ~database_name ~name ~partition_key_path
      ~resource_group_name ~autoscale_settings
      ~conflict_resolution_policy ~indexing_policy ~unique_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_container __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       analytical_storage_ttl =
         Prop.computed __resource_type __resource_id
           "analytical_storage_ttl";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       default_ttl =
         Prop.computed __resource_type __resource_id "default_ttl";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       partition_key_path =
         Prop.computed __resource_type __resource_id
           "partition_key_path";
       partition_key_version =
         Prop.computed __resource_type __resource_id
           "partition_key_version";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       throughput =
         Prop.computed __resource_type __resource_id "throughput";
     }
      : t)
  in
  __resource_attributes
