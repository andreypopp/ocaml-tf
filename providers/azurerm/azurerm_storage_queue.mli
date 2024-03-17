(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_queue__timeouts
type azurerm_storage_queue

type t = private {
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

val azurerm_storage_queue :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_storage_queue__timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  t
