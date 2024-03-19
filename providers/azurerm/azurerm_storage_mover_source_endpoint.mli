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

type azurerm_storage_mover_source_endpoint

val azurerm_storage_mover_source_endpoint :
  ?description:string prop ->
  ?export:string prop ->
  ?id:string prop ->
  ?nfs_version:string prop ->
  ?timeouts:timeouts ->
  host:string prop ->
  name:string prop ->
  storage_mover_id:string prop ->
  unit ->
  azurerm_storage_mover_source_endpoint

val yojson_of_azurerm_storage_mover_source_endpoint :
  azurerm_storage_mover_source_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  export : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  nfs_version : string prop;
  storage_mover_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?export:string prop ->
  ?id:string prop ->
  ?nfs_version:string prop ->
  ?timeouts:timeouts ->
  host:string prop ->
  name:string prop ->
  storage_mover_id:string prop ->
  string ->
  t
