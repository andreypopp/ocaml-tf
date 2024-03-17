(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_access_approval_settings__enrolled_services
type google_project_access_approval_settings__timeouts
type google_project_access_approval_settings

val google_project_access_approval_settings :
  ?active_key_version:string ->
  ?id:string ->
  ?notification_emails:string list ->
  ?project:string ->
  ?timeouts:google_project_access_approval_settings__timeouts ->
  project_id:string ->
  enrolled_services:
    google_project_access_approval_settings__enrolled_services list ->
  string ->
  unit
