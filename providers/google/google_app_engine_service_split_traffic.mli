(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type split

val split :
  ?shard_by:string prop ->
  allocations:string prop Tf_core.assoc ->
  unit ->
  split

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_app_engine_service_split_traffic

val google_app_engine_service_split_traffic :
  ?id:string prop ->
  ?migrate_traffic:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service:string prop ->
  split:split list ->
  unit ->
  google_app_engine_service_split_traffic

val yojson_of_google_app_engine_service_split_traffic :
  google_app_engine_service_split_traffic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  migrate_traffic : bool prop;
  project : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?migrate_traffic:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service:string prop ->
  split:split list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?migrate_traffic:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service:string prop ->
  split:split list ->
  string ->
  t Tf_core.resource
