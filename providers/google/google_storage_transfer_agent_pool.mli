(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bandwidth_limit

val bandwidth_limit :
  limit_mbps:string prop -> unit -> bandwidth_limit

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_storage_transfer_agent_pool

val google_storage_transfer_agent_pool :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  bandwidth_limit:bandwidth_limit list ->
  unit ->
  google_storage_transfer_agent_pool

val yojson_of_google_storage_transfer_agent_pool :
  google_storage_transfer_agent_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  bandwidth_limit:bandwidth_limit list ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  bandwidth_limit:bandwidth_limit list ->
  string ->
  t Tf_core.resource
