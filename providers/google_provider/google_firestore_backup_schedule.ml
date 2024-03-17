(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firestore_backup_schedule__daily_recurrence = unit
[@@deriving yojson_of]

type google_firestore_backup_schedule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firestore_backup_schedule__timeouts *)

type google_firestore_backup_schedule__weekly_recurrence = {
  day : string option; [@option]
      (** The day of week to run. Possible values: [DAY_OF_WEEK_UNSPECIFIED, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
}
[@@deriving yojson_of]
(** For a schedule that runs weekly on a specific day and time. *)

type google_firestore_backup_schedule = {
  database : string option; [@option]
      (** The Firestore database id. Defaults to '(default)'. *)
  retention : string;
      (** At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s.

For a daily backup recurrence, set this to a value up to 7 days. If you set a weekly backup recurrence, set this to a value up to 14 weeks. *)
  daily_recurrence :
    google_firestore_backup_schedule__daily_recurrence list;
  timeouts : google_firestore_backup_schedule__timeouts option;
  weekly_recurrence :
    google_firestore_backup_schedule__weekly_recurrence list;
}
[@@deriving yojson_of]
(** google_firestore_backup_schedule *)

let google_firestore_backup_schedule ?database ?timeouts ~retention
    ~daily_recurrence ~weekly_recurrence __resource_id =
  let __resource_type = "google_firestore_backup_schedule" in
  let __resource =
    {
      database;
      retention;
      daily_recurrence;
      timeouts;
      weekly_recurrence;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firestore_backup_schedule __resource);
  ()
