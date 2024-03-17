(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_backup_schedule__daily_recurrence
type google_firestore_backup_schedule__timeouts
type google_firestore_backup_schedule__weekly_recurrence
type google_firestore_backup_schedule

val google_firestore_backup_schedule :
  ?database:string ->
  ?timeouts:google_firestore_backup_schedule__timeouts ->
  retention:string ->
  daily_recurrence:
    google_firestore_backup_schedule__daily_recurrence list ->
  weekly_recurrence:
    google_firestore_backup_schedule__weekly_recurrence list ->
  string ->
  unit
