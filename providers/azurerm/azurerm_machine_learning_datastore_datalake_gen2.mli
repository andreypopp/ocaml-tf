(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_machine_learning_datastore_datalake_gen2

val azurerm_machine_learning_datastore_datalake_gen2 :
  ?authority_url:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_data_identity:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_container_id:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_machine_learning_datastore_datalake_gen2

val yojson_of_azurerm_machine_learning_datastore_datalake_gen2 :
  azurerm_machine_learning_datastore_datalake_gen2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authority_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  description : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  service_data_identity : string prop;
  storage_container_id : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authority_url:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_data_identity:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_container_id:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?authority_url:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_data_identity:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_container_id:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
