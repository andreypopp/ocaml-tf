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

type azurerm_storage_data_lake_gen2_path

val azurerm_storage_data_lake_gen2_path :
  ?group:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?timeouts:timeouts ->
  filesystem_name:string prop ->
  path:string prop ->
  resource:string prop ->
  storage_account_id:string prop ->
  ace:ace list ->
  unit ->
  azurerm_storage_data_lake_gen2_path

val yojson_of_azurerm_storage_data_lake_gen2_path :
  azurerm_storage_data_lake_gen2_path -> json

(** RESOURCE REGISTRATION *)

type t = private {
  filesystem_name : string prop;
  group : string prop;
  id : string prop;
  owner : string prop;
  path : string prop;
  resource : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?group:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?timeouts:timeouts ->
  filesystem_name:string prop ->
  path:string prop ->
  resource:string prop ->
  storage_account_id:string prop ->
  ace:ace list ->
  string ->
  t

val make :
  ?group:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?timeouts:timeouts ->
  filesystem_name:string prop ->
  path:string prop ->
  resource:string prop ->
  storage_account_id:string prop ->
  ace:ace list ->
  string ->
  t Tf_core.resource
