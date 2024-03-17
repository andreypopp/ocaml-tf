(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_spark_pool__auto_pause
type azurerm_synapse_spark_pool__auto_scale
type azurerm_synapse_spark_pool__library_requirement
type azurerm_synapse_spark_pool__spark_config
type azurerm_synapse_spark_pool__timeouts
type azurerm_synapse_spark_pool

val azurerm_synapse_spark_pool :
  ?cache_size:float prop ->
  ?compute_isolation_enabled:bool prop ->
  ?dynamic_executor_allocation_enabled:bool prop ->
  ?id:string prop ->
  ?max_executors:float prop ->
  ?min_executors:float prop ->
  ?node_count:float prop ->
  ?session_level_packages_enabled:bool prop ->
  ?spark_events_folder:string prop ->
  ?spark_log_folder:string prop ->
  ?spark_version:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_synapse_spark_pool__timeouts ->
  name:string prop ->
  node_size:string prop ->
  node_size_family:string prop ->
  synapse_workspace_id:string prop ->
  auto_pause:azurerm_synapse_spark_pool__auto_pause list ->
  auto_scale:azurerm_synapse_spark_pool__auto_scale list ->
  library_requirement:
    azurerm_synapse_spark_pool__library_requirement list ->
  spark_config:azurerm_synapse_spark_pool__spark_config list ->
  string ->
  unit
