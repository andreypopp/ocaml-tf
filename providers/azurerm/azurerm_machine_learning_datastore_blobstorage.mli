(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_machine_learning_datastore_blobstorage

val azurerm_machine_learning_datastore_blobstorage :
  ?account_key:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?service_data_auth_identity:string prop ->
  ?shared_access_signature:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_container_id:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_machine_learning_datastore_blobstorage

val yojson_of_azurerm_machine_learning_datastore_blobstorage :
  azurerm_machine_learning_datastore_blobstorage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_key : string prop;
  description : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  service_data_auth_identity : string prop;
  shared_access_signature : string prop;
  storage_container_id : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_key:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?service_data_auth_identity:string prop ->
  ?shared_access_signature:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_container_id:string prop ->
  workspace_id:string prop ->
  string ->
  t
