(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_network_peering_routes_config

val google_compute_network_peering_routes_config :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  export_custom_routes:bool prop ->
  import_custom_routes:bool prop ->
  network:string prop ->
  peering:string prop ->
  unit ->
  google_compute_network_peering_routes_config

val yojson_of_google_compute_network_peering_routes_config :
  google_compute_network_peering_routes_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  export_custom_routes : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  network : string prop;
  peering : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  export_custom_routes:bool prop ->
  import_custom_routes:bool prop ->
  network:string prop ->
  peering:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  export_custom_routes:bool prop ->
  import_custom_routes:bool prop ->
  network:string prop ->
  peering:string prop ->
  string ->
  t Tf_core.resource
