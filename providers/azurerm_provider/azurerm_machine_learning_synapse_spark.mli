(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_synapse_spark__identity
type azurerm_machine_learning_synapse_spark__timeouts
type azurerm_machine_learning_synapse_spark

val azurerm_machine_learning_synapse_spark :
  ?description:string ->
  ?local_auth_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_machine_learning_synapse_spark__timeouts ->
  location:string ->
  machine_learning_workspace_id:string ->
  name:string ->
  synapse_spark_pool_id:string ->
  identity:azurerm_machine_learning_synapse_spark__identity list ->
  string ->
  unit
