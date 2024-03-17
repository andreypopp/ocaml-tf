(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_database__timeouts
type google_firestore_database

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

val google_firestore_database :
  ?app_engine_integration_mode:string prop ->
  ?concurrency_mode:string prop ->
  ?delete_protection_state:string prop ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?point_in_time_recovery_enablement:string prop ->
  ?project:string prop ->
  ?timeouts:google_firestore_database__timeouts ->
  location_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t
