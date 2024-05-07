(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_integration_account_map

val azurerm_logic_app_integration_account_map :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  map_type:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_logic_app_integration_account_map

val yojson_of_azurerm_logic_app_integration_account_map :
  azurerm_logic_app_integration_account_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  content : string prop;
  id : string prop;
  integration_account_name : string prop;
  map_type : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  map_type:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  map_type:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
