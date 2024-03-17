(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_synapse_spark_pool__auto_pause = {
  delay_in_minutes : float;  (** delay_in_minutes *)
}
[@@deriving yojson_of]
(** azurerm_synapse_spark_pool__auto_pause *)

type azurerm_synapse_spark_pool__auto_scale = {
  max_node_count : float;  (** max_node_count *)
  min_node_count : float;  (** min_node_count *)
}
[@@deriving yojson_of]
(** azurerm_synapse_spark_pool__auto_scale *)

type azurerm_synapse_spark_pool__library_requirement = {
  content : string;  (** content *)
  filename : string;  (** filename *)
}
[@@deriving yojson_of]
(** azurerm_synapse_spark_pool__library_requirement *)

type azurerm_synapse_spark_pool__spark_config = {
  content : string;  (** content *)
  filename : string;  (** filename *)
}
[@@deriving yojson_of]
(** azurerm_synapse_spark_pool__spark_config *)

type azurerm_synapse_spark_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_spark_pool__timeouts *)

type azurerm_synapse_spark_pool = {
  cache_size : float option; [@option]  (** cache_size *)
  compute_isolation_enabled : bool option; [@option]
      (** compute_isolation_enabled *)
  dynamic_executor_allocation_enabled : bool option; [@option]
      (** dynamic_executor_allocation_enabled *)
  max_executors : float option; [@option]  (** max_executors *)
  min_executors : float option; [@option]  (** min_executors *)
  name : string;  (** name *)
  node_count : float option; [@option]  (** node_count *)
  node_size : string;  (** node_size *)
  node_size_family : string;  (** node_size_family *)
  session_level_packages_enabled : bool option; [@option]
      (** session_level_packages_enabled *)
  spark_events_folder : string option; [@option]
      (** spark_events_folder *)
  spark_log_folder : string option; [@option]
      (** spark_log_folder *)
  spark_version : string option; [@option]  (** spark_version *)
  synapse_workspace_id : string;  (** synapse_workspace_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  auto_pause : azurerm_synapse_spark_pool__auto_pause list;
  auto_scale : azurerm_synapse_spark_pool__auto_scale list;
  library_requirement :
    azurerm_synapse_spark_pool__library_requirement list;
  spark_config : azurerm_synapse_spark_pool__spark_config list;
  timeouts : azurerm_synapse_spark_pool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_spark_pool *)

let azurerm_synapse_spark_pool ?cache_size ?compute_isolation_enabled
    ?dynamic_executor_allocation_enabled ?max_executors
    ?min_executors ?node_count ?session_level_packages_enabled
    ?spark_events_folder ?spark_log_folder ?spark_version ?tags
    ?timeouts ~name ~node_size ~node_size_family
    ~synapse_workspace_id ~auto_pause ~auto_scale
    ~library_requirement ~spark_config __resource_id =
  let __resource_type = "azurerm_synapse_spark_pool" in
  let __resource =
    {
      cache_size;
      compute_isolation_enabled;
      dynamic_executor_allocation_enabled;
      max_executors;
      min_executors;
      name;
      node_count;
      node_size;
      node_size_family;
      session_level_packages_enabled;
      spark_events_folder;
      spark_log_folder;
      spark_version;
      synapse_workspace_id;
      tags;
      auto_pause;
      auto_scale;
      library_requirement;
      spark_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_spark_pool __resource);
  ()
