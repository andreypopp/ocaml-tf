(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_database__timeouts
type google_firestore_database

val google_firestore_database :
  ?app_engine_integration_mode:string ->
  ?concurrency_mode:string ->
  ?delete_protection_state:string ->
  ?deletion_policy:string ->
  ?id:string ->
  ?point_in_time_recovery_enablement:string ->
  ?project:string ->
  ?timeouts:google_firestore_database__timeouts ->
  location_id:string ->
  name:string ->
  type_:string ->
  string ->
  unit
