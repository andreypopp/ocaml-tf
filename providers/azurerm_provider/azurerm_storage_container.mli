(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_container__timeouts
type azurerm_storage_container

type t = private {
  container_access_type : string prop;
  has_immutability_policy : bool prop;
  has_legal_hold : bool prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

val azurerm_storage_container :
  ?container_access_type:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_storage_container__timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  t
