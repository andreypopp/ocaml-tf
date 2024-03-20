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

type azurerm_machine_learning_datastore_fileshare

val azurerm_machine_learning_datastore_fileshare :
  ?account_key:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_data_identity:string prop ->
  ?shared_access_signature:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_fileshare_id:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_machine_learning_datastore_fileshare

val yojson_of_azurerm_machine_learning_datastore_fileshare :
  azurerm_machine_learning_datastore_fileshare -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_key : string prop;
  description : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  service_data_identity : string prop;
  shared_access_signature : string prop;
  storage_fileshare_id : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_key:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_data_identity:string prop ->
  ?shared_access_signature:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_fileshare_id:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?account_key:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_data_identity:string prop ->
  ?shared_access_signature:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_fileshare_id:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
