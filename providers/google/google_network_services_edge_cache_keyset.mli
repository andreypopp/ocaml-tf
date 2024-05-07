(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type public_key

val public_key :
  ?managed:bool prop ->
  ?value:string prop ->
  id:string prop ->
  unit ->
  public_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type validation_shared_keys

val validation_shared_keys :
  secret_version:string prop -> unit -> validation_shared_keys

type google_network_services_edge_cache_keyset

val google_network_services_edge_cache_keyset :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?public_key:public_key list ->
  ?timeouts:timeouts ->
  ?validation_shared_keys:validation_shared_keys list ->
  name:string prop ->
  unit ->
  google_network_services_edge_cache_keyset

val yojson_of_google_network_services_edge_cache_keyset :
  google_network_services_edge_cache_keyset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?public_key:public_key list ->
  ?timeouts:timeouts ->
  ?validation_shared_keys:validation_shared_keys list ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?public_key:public_key list ->
  ?timeouts:timeouts ->
  ?validation_shared_keys:validation_shared_keys list ->
  name:string prop ->
  string ->
  t Tf_core.resource
