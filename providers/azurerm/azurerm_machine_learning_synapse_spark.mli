(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_machine_learning_synapse_spark

val azurerm_machine_learning_synapse_spark :
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  synapse_spark_pool_id:string prop ->
  identity:identity list ->
  unit ->
  azurerm_machine_learning_synapse_spark

val yojson_of_azurerm_machine_learning_synapse_spark :
  azurerm_machine_learning_synapse_spark -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  synapse_spark_pool_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  synapse_spark_pool_id:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  synapse_spark_pool_id:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource
