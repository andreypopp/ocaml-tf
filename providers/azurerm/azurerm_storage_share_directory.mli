(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_share_directory__timeouts
type azurerm_storage_share_directory

type t = private {
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  share_name : string prop;
  storage_account_name : string prop;
  storage_share_id : string prop;
}

val azurerm_storage_share_directory :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?share_name:string prop ->
  ?storage_account_name:string prop ->
  ?storage_share_id:string prop ->
  ?timeouts:azurerm_storage_share_directory__timeouts ->
  name:string prop ->
  string ->
  t
