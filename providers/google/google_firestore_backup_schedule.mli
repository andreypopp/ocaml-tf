(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type daily_recurrence

val daily_recurrence : unit -> daily_recurrence

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type weekly_recurrence

val weekly_recurrence : ?day:string prop -> unit -> weekly_recurrence

type google_firestore_backup_schedule

val google_firestore_backup_schedule :
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  retention:string prop ->
  daily_recurrence:daily_recurrence list ->
  weekly_recurrence:weekly_recurrence list ->
  unit ->
  google_firestore_backup_schedule

val yojson_of_google_firestore_backup_schedule :
  google_firestore_backup_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  database : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  retention : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  retention:string prop ->
  daily_recurrence:daily_recurrence list ->
  weekly_recurrence:weekly_recurrence list ->
  string ->
  t
