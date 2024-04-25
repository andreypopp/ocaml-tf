(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_header

val custom_header :
  name:string prop -> value:string prop -> unit -> custom_header

type subnet

val subnet :
  ?last:string prop ->
  ?scope:float prop ->
  first:string prop ->
  unit ->
  subnet

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_traffic_manager_external_endpoint

val azurerm_traffic_manager_external_endpoint :
  ?always_serve_enabled:bool prop ->
  ?enabled:bool prop ->
  ?endpoint_location:string prop ->
  ?geo_mappings:string prop list ->
  ?id:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?custom_header:custom_header list ->
  ?subnet:subnet list ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_id:string prop ->
  target:string prop ->
  unit ->
  azurerm_traffic_manager_external_endpoint

val yojson_of_azurerm_traffic_manager_external_endpoint :
  azurerm_traffic_manager_external_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  always_serve_enabled : bool prop;
  enabled : bool prop;
  endpoint_location : string prop;
  geo_mappings : string list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  profile_id : string prop;
  target : string prop;
  weight : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?always_serve_enabled:bool prop ->
  ?enabled:bool prop ->
  ?endpoint_location:string prop ->
  ?geo_mappings:string prop list ->
  ?id:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?custom_header:custom_header list ->
  ?subnet:subnet list ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_id:string prop ->
  target:string prop ->
  string ->
  t

val make :
  ?always_serve_enabled:bool prop ->
  ?enabled:bool prop ->
  ?endpoint_location:string prop ->
  ?geo_mappings:string prop list ->
  ?id:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?custom_header:custom_header list ->
  ?subnet:subnet list ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_id:string prop ->
  target:string prop ->
  string ->
  t Tf_core.resource
