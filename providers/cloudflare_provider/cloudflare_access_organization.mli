(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_organization__custom_pages
type cloudflare_access_organization__login_design
type cloudflare_access_organization

val cloudflare_access_organization :
  ?account_id:string ->
  ?allow_authenticate_via_warp:bool ->
  ?auto_redirect_to_identity:bool ->
  ?id:string ->
  ?is_ui_read_only:bool ->
  ?name:string ->
  ?session_duration:string ->
  ?ui_read_only_toggle_reason:string ->
  ?user_seat_expiration_inactive_time:string ->
  ?warp_auth_session_duration:string ->
  ?zone_id:string ->
  auth_domain:string ->
  custom_pages:cloudflare_access_organization__custom_pages list ->
  login_design:cloudflare_access_organization__login_design list ->
  string ->
  unit
