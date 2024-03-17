(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_datastore_datalake_gen2__timeouts
type azurerm_machine_learning_datastore_datalake_gen2

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

val azurerm_machine_learning_datastore_datalake_gen2 :
  ?authority_url:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_data_identity:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_id:string prop ->
  ?timeouts:
    azurerm_machine_learning_datastore_datalake_gen2__timeouts ->
  name:string prop ->
  storage_container_id:string prop ->
  workspace_id:string prop ->
  string ->
  t
