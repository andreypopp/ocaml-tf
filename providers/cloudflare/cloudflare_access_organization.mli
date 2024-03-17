(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_organization__custom_pages
type cloudflare_access_organization__login_design
type cloudflare_access_organization

type t = private {
  account_id : string prop;
  allow_authenticate_via_warp : bool prop;
  auth_domain : string prop;
  auto_redirect_to_identity : bool prop;
  id : string prop;
  is_ui_read_only : bool prop;
  name : string prop;
  session_duration : string prop;
  ui_read_only_toggle_reason : string prop;
  user_seat_expiration_inactive_time : string prop;
  warp_auth_session_duration : string prop;
  zone_id : string prop;
}

val cloudflare_access_organization :
  ?account_id:string prop ->
  ?allow_authenticate_via_warp:bool prop ->
  ?auto_redirect_to_identity:bool prop ->
  ?id:string prop ->
  ?is_ui_read_only:bool prop ->
  ?name:string prop ->
  ?session_duration:string prop ->
  ?ui_read_only_toggle_reason:string prop ->
  ?user_seat_expiration_inactive_time:string prop ->
  ?warp_auth_session_duration:string prop ->
  ?zone_id:string prop ->
  auth_domain:string prop ->
  custom_pages:cloudflare_access_organization__custom_pages list ->
  login_design:cloudflare_access_organization__login_design list ->
  string ->
  t
