(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_source_endpoint__timeouts
type azurerm_storage_mover_source_endpoint

type t = private {
  description : string prop;
  export : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  nfs_version : string prop;
  storage_mover_id : string prop;
}

val azurerm_storage_mover_source_endpoint :
  ?description:string prop ->
  ?export:string prop ->
  ?id:string prop ->
  ?nfs_version:string prop ->
  ?timeouts:azurerm_storage_mover_source_endpoint__timeouts ->
  host:string prop ->
  name:string prop ->
  storage_mover_id:string prop ->
  string ->
  t
