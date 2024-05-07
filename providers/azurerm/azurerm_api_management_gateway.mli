(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type location_data

val location_data :
  ?city:string prop ->
  ?district:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  location_data

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_gateway

val azurerm_api_management_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  location_data:location_data list ->
  unit ->
  azurerm_api_management_gateway

val yojson_of_azurerm_api_management_gateway :
  azurerm_api_management_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  location_data:location_data list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  location_data:location_data list ->
  string ->
  t Tf_core.resource
