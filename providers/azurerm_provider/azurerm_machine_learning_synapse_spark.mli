(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_synapse_spark__identity
type azurerm_machine_learning_synapse_spark__timeouts
type azurerm_machine_learning_synapse_spark

val azurerm_machine_learning_synapse_spark :
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_machine_learning_synapse_spark__timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  synapse_spark_pool_id:string prop ->
  identity:azurerm_machine_learning_synapse_spark__identity list ->
  string ->
  unit
