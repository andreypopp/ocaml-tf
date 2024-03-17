(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_database__timeouts
type google_firestore_database

val google_firestore_database :
  ?deletion_policy:string ->
  ?point_in_time_recovery_enablement:string ->
  ?timeouts:google_firestore_database__timeouts ->
  location_id:string ->
  name:string ->
  type_:string ->
  string ->
  unit
