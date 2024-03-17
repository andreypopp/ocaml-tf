(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_access_approval_settings__enrolled_services
type google_folder_access_approval_settings__timeouts
type google_folder_access_approval_settings

val google_folder_access_approval_settings :
  ?active_key_version:string ->
  ?id:string ->
  ?notification_emails:string list ->
  ?timeouts:google_folder_access_approval_settings__timeouts ->
  folder_id:string ->
  enrolled_services:
    google_folder_access_approval_settings__enrolled_services list ->
  string ->
  unit
