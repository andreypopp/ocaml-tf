(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_access_approval_settings__enrolled_services
type google_folder_access_approval_settings__timeouts
type google_folder_access_approval_settings

type t = private {
  active_key_version : string prop;
  ancestor_has_active_key_version : bool prop;
  enrolled_ancestor : bool prop;
  folder_id : string prop;
  id : string prop;
  invalid_key_version : bool prop;
  name : string prop;
  notification_emails : string list prop;
}

val google_folder_access_approval_settings :
  ?active_key_version:string prop ->
  ?id:string prop ->
  ?notification_emails:string prop list ->
  ?timeouts:google_folder_access_approval_settings__timeouts ->
  folder_id:string prop ->
  enrolled_services:
    google_folder_access_approval_settings__enrolled_services list ->
  string ->
  t
