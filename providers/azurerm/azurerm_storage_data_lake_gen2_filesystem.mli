(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ace

val ace :
  ?id:string prop ->
  ?scope:string prop ->
  permissions:string prop ->
  type_:string prop ->
  unit ->
  ace

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_data_lake_gen2_filesystem

val azurerm_storage_data_lake_gen2_filesystem :
  ?group:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?properties:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  ace:ace list ->
  unit ->
  azurerm_storage_data_lake_gen2_filesystem

val yojson_of_azurerm_storage_data_lake_gen2_filesystem :
  azurerm_storage_data_lake_gen2_filesystem -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  group : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  properties : (string * string) list prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?group:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?properties:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  ace:ace list ->
  string ->
  t

val make :
  ?group:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?properties:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  ace:ace list ->
  string ->
  t Tf_core.resource
