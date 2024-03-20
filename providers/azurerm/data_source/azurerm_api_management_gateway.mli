(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type location_data = {
  city : string prop;  (** city *)
  district : string prop;  (** district *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_api_management_gateway

val azurerm_api_management_gateway :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_api_management_gateway

val yojson_of_azurerm_api_management_gateway :
  azurerm_api_management_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_id : string prop;
  description : string prop;
  id : string prop;
  location_data : location_data list prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
