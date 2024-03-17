(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_datastore_blobstorage__timeouts
type azurerm_machine_learning_datastore_blobstorage

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

val azurerm_machine_learning_datastore_blobstorage :
  ?account_key:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?service_data_auth_identity:string prop ->
  ?shared_access_signature:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_machine_learning_datastore_blobstorage__timeouts ->
  name:string prop ->
  storage_container_id:string prop ->
  workspace_id:string prop ->
  string ->
  t
