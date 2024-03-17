(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_spark_pool__auto_pause
type azurerm_synapse_spark_pool__auto_scale
type azurerm_synapse_spark_pool__library_requirement
type azurerm_synapse_spark_pool__spark_config
type azurerm_synapse_spark_pool__timeouts
type azurerm_synapse_spark_pool

val azurerm_synapse_spark_pool :
  ?cache_size:float ->
  ?compute_isolation_enabled:bool ->
  ?dynamic_executor_allocation_enabled:bool ->
  ?id:string ->
  ?max_executors:float ->
  ?min_executors:float ->
  ?node_count:float ->
  ?session_level_packages_enabled:bool ->
  ?spark_events_folder:string ->
  ?spark_log_folder:string ->
  ?spark_version:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_synapse_spark_pool__timeouts ->
  name:string ->
  node_size:string ->
  node_size_family:string ->
  synapse_workspace_id:string ->
  auto_pause:azurerm_synapse_spark_pool__auto_pause list ->
  auto_scale:azurerm_synapse_spark_pool__auto_scale list ->
  library_requirement:
    azurerm_synapse_spark_pool__library_requirement list ->
  spark_config:azurerm_synapse_spark_pool__spark_config list ->
  string ->
  unit
