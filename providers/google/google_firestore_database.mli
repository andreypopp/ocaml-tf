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

type google_firestore_database

val google_firestore_database :
  ?app_engine_integration_mode:string prop ->
  ?concurrency_mode:string prop ->
  ?delete_protection_state:string prop ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?point_in_time_recovery_enablement:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location_id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  google_firestore_database

val yojson_of_google_firestore_database :
  google_firestore_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_engine_integration_mode : string prop;
  concurrency_mode : string prop;
  create_time : string prop;
  delete_protection_state : string prop;
  deletion_policy : string prop;
  earliest_version_time : string prop;
  etag : string prop;
  id : string prop;
  key_prefix : string prop;
  location_id : string prop;
  name : string prop;
  point_in_time_recovery_enablement : string prop;
  project : string prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
  version_retention_period : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_engine_integration_mode:string prop ->
  ?concurrency_mode:string prop ->
  ?delete_protection_state:string prop ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?point_in_time_recovery_enablement:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?app_engine_integration_mode:string prop ->
  ?concurrency_mode:string prop ->
  ?delete_protection_state:string prop ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?point_in_time_recovery_enablement:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
