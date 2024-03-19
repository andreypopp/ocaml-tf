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

type index_policy__composite_index__index = {
  order : string prop;  (** order *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** index_policy__composite_index__index *)

type index_policy__composite_index = {
  index : index_policy__composite_index__index list;
}
[@@deriving yojson_of]
(** index_policy__composite_index *)

type index_policy__spatial_index = {
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** index_policy__spatial_index *)

type index_policy = {
  automatic : bool prop option; [@option]  (** automatic *)
  excluded_paths : string prop list option; [@option]
      (** excluded_paths *)
  included_paths : string prop list option; [@option]
      (** included_paths *)
  indexing_mode : string prop;  (** indexing_mode *)
  composite_index : index_policy__composite_index list;
  spatial_index : index_policy__spatial_index list;
}
[@@deriving yojson_of]
(** index_policy *)

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

type azurerm_cosmosdb_gremlin_graph = {
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
  index_policy : index_policy list;
  timeouts : timeouts option;
  unique_key : unique_key list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_gremlin_graph *)

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let conflict_resolution_policy ?conflict_resolution_path
    ?conflict_resolution_procedure ~mode () :
    conflict_resolution_policy =
  { conflict_resolution_path; conflict_resolution_procedure; mode }

let index_policy__composite_index__index ~order ~path () :
    index_policy__composite_index__index =
  { order; path }

let index_policy__composite_index ~index () :
    index_policy__composite_index =
  { index }

let index_policy__spatial_index ~path () :
    index_policy__spatial_index =
  { path }

let index_policy ?automatic ?excluded_paths ?included_paths
    ~indexing_mode ~composite_index ~spatial_index () : index_policy
    =
  {
    automatic;
    excluded_paths;
    included_paths;
    indexing_mode;
    composite_index;
    spatial_index;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let unique_key ~paths () : unique_key = { paths }

let azurerm_cosmosdb_gremlin_graph ?analytical_storage_ttl
    ?default_ttl ?id ?partition_key_version ?throughput ?timeouts
    ~account_name ~database_name ~name ~partition_key_path
    ~resource_group_name ~autoscale_settings
    ~conflict_resolution_policy ~index_policy ~unique_key () :
    azurerm_cosmosdb_gremlin_graph =
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
    index_policy;
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
    ~autoscale_settings ~conflict_resolution_policy ~index_policy
    ~unique_key __resource_id =
  let __resource_type = "azurerm_cosmosdb_gremlin_graph" in
  let __resource =
    azurerm_cosmosdb_gremlin_graph ?analytical_storage_ttl
      ?default_ttl ?id ?partition_key_version ?throughput ?timeouts
      ~account_name ~database_name ~name ~partition_key_path
      ~resource_group_name ~autoscale_settings
      ~conflict_resolution_policy ~index_policy ~unique_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_gremlin_graph __resource);
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
