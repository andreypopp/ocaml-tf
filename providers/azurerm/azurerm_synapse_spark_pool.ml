(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type auto_pause = {
  delay_in_minutes : float prop;  (** delay_in_minutes *)
}
[@@deriving yojson_of]
(** auto_pause *)

type auto_scale = {
  max_node_count : float prop;  (** max_node_count *)
  min_node_count : float prop;  (** min_node_count *)
}
[@@deriving yojson_of]
(** auto_scale *)

type library_requirement = {
  content : string prop;  (** content *)
  filename : string prop;  (** filename *)
}
[@@deriving yojson_of]
(** library_requirement *)

type spark_config = {
  content : string prop;  (** content *)
  filename : string prop;  (** filename *)
}
[@@deriving yojson_of]
(** spark_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_synapse_spark_pool = {
  cache_size : float prop option; [@option]  (** cache_size *)
  compute_isolation_enabled : bool prop option; [@option]
      (** compute_isolation_enabled *)
  dynamic_executor_allocation_enabled : bool prop option; [@option]
      (** dynamic_executor_allocation_enabled *)
  id : string prop option; [@option]  (** id *)
  max_executors : float prop option; [@option]  (** max_executors *)
  min_executors : float prop option; [@option]  (** min_executors *)
  name : string prop;  (** name *)
  node_count : float prop option; [@option]  (** node_count *)
  node_size : string prop;  (** node_size *)
  node_size_family : string prop;  (** node_size_family *)
  session_level_packages_enabled : bool prop option; [@option]
      (** session_level_packages_enabled *)
  spark_events_folder : string prop option; [@option]
      (** spark_events_folder *)
  spark_log_folder : string prop option; [@option]
      (** spark_log_folder *)
  spark_version : string prop option; [@option]  (** spark_version *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  auto_pause : auto_pause list;
  auto_scale : auto_scale list;
  library_requirement : library_requirement list;
  spark_config : spark_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_spark_pool *)

let auto_pause ~delay_in_minutes () : auto_pause =
  { delay_in_minutes }

let auto_scale ~max_node_count ~min_node_count () : auto_scale =
  { max_node_count; min_node_count }

let library_requirement ~content ~filename () : library_requirement =
  { content; filename }

let spark_config ~content ~filename () : spark_config =
  { content; filename }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_spark_pool ?cache_size ?compute_isolation_enabled
    ?dynamic_executor_allocation_enabled ?id ?max_executors
    ?min_executors ?node_count ?session_level_packages_enabled
    ?spark_events_folder ?spark_log_folder ?spark_version ?tags
    ?timeouts ~name ~node_size ~node_size_family
    ~synapse_workspace_id ~auto_pause ~auto_scale
    ~library_requirement ~spark_config () :
    azurerm_synapse_spark_pool =
  {
    cache_size;
    compute_isolation_enabled;
    dynamic_executor_allocation_enabled;
    id;
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

type t = {
  cache_size : float prop;
  compute_isolation_enabled : bool prop;
  dynamic_executor_allocation_enabled : bool prop;
  id : string prop;
  max_executors : float prop;
  min_executors : float prop;
  name : string prop;
  node_count : float prop;
  node_size : string prop;
  node_size_family : string prop;
  session_level_packages_enabled : bool prop;
  spark_events_folder : string prop;
  spark_log_folder : string prop;
  spark_version : string prop;
  synapse_workspace_id : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?cache_size ?compute_isolation_enabled
    ?dynamic_executor_allocation_enabled ?id ?max_executors
    ?min_executors ?node_count ?session_level_packages_enabled
    ?spark_events_folder ?spark_log_folder ?spark_version ?tags
    ?timeouts ~name ~node_size ~node_size_family
    ~synapse_workspace_id ~auto_pause ~auto_scale
    ~library_requirement ~spark_config __resource_id =
  let __resource_type = "azurerm_synapse_spark_pool" in
  let __resource =
    azurerm_synapse_spark_pool ?cache_size ?compute_isolation_enabled
      ?dynamic_executor_allocation_enabled ?id ?max_executors
      ?min_executors ?node_count ?session_level_packages_enabled
      ?spark_events_folder ?spark_log_folder ?spark_version ?tags
      ?timeouts ~name ~node_size ~node_size_family
      ~synapse_workspace_id ~auto_pause ~auto_scale
      ~library_requirement ~spark_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_spark_pool __resource);
  let __resource_attributes =
    ({
       cache_size =
         Prop.computed __resource_type __resource_id "cache_size";
       compute_isolation_enabled =
         Prop.computed __resource_type __resource_id
           "compute_isolation_enabled";
       dynamic_executor_allocation_enabled =
         Prop.computed __resource_type __resource_id
           "dynamic_executor_allocation_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       max_executors =
         Prop.computed __resource_type __resource_id "max_executors";
       min_executors =
         Prop.computed __resource_type __resource_id "min_executors";
       name = Prop.computed __resource_type __resource_id "name";
       node_count =
         Prop.computed __resource_type __resource_id "node_count";
       node_size =
         Prop.computed __resource_type __resource_id "node_size";
       node_size_family =
         Prop.computed __resource_type __resource_id
           "node_size_family";
       session_level_packages_enabled =
         Prop.computed __resource_type __resource_id
           "session_level_packages_enabled";
       spark_events_folder =
         Prop.computed __resource_type __resource_id
           "spark_events_folder";
       spark_log_folder =
         Prop.computed __resource_type __resource_id
           "spark_log_folder";
       spark_version =
         Prop.computed __resource_type __resource_id "spark_version";
       synapse_workspace_id =
         Prop.computed __resource_type __resource_id
           "synapse_workspace_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
