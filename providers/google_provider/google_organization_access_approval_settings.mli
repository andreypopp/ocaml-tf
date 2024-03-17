(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_organization_access_approval_settings__enrolled_services
type google_organization_access_approval_settings__timeouts
type google_organization_access_approval_settings

val google_organization_access_approval_settings :
  ?active_key_version:string prop ->
  ?id:string prop ->
  ?notification_emails:string prop list ->
  ?timeouts:google_organization_access_approval_settings__timeouts ->
  organization_id:string prop ->
  enrolled_services:
    google_organization_access_approval_settings__enrolled_services
    list ->
  string ->
  unit
