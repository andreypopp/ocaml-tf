(** A Zero Trust organization defines the user login experience.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_pages

val custom_pages :
  ?forbidden:string prop ->
  ?identity_denied:string prop ->
  unit ->
  custom_pages

type login_design

val login_design :
  ?background_color:string prop ->
  ?footer_text:string prop ->
  ?header_text:string prop ->
  ?logo_path:string prop ->
  ?text_color:string prop ->
  unit ->
  login_design

type cloudflare_access_organization

val cloudflare_access_organization :
  ?account_id:string prop ->
  ?allow_authenticate_via_warp:bool prop ->
  ?auto_redirect_to_identity:bool prop ->
  ?id:string prop ->
  ?is_ui_read_only:bool prop ->
  ?session_duration:string prop ->
  ?ui_read_only_toggle_reason:string prop ->
  ?user_seat_expiration_inactive_time:string prop ->
  ?warp_auth_session_duration:string prop ->
  ?zone_id:string prop ->
  ?custom_pages:custom_pages list ->
  ?login_design:login_design list ->
  auth_domain:string prop ->
  name:string prop ->
  unit ->
  cloudflare_access_organization

val yojson_of_cloudflare_access_organization :
  cloudflare_access_organization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?allow_authenticate_via_warp:bool prop ->
  ?auto_redirect_to_identity:bool prop ->
  ?id:string prop ->
  ?is_ui_read_only:bool prop ->
  ?session_duration:string prop ->
  ?ui_read_only_toggle_reason:string prop ->
  ?user_seat_expiration_inactive_time:string prop ->
  ?warp_auth_session_duration:string prop ->
  ?zone_id:string prop ->
  ?custom_pages:custom_pages list ->
  ?login_design:login_design list ->
  auth_domain:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?allow_authenticate_via_warp:bool prop ->
  ?auto_redirect_to_identity:bool prop ->
  ?id:string prop ->
  ?is_ui_read_only:bool prop ->
  ?session_duration:string prop ->
  ?ui_read_only_toggle_reason:string prop ->
  ?user_seat_expiration_inactive_time:string prop ->
  ?warp_auth_session_duration:string prop ->
  ?zone_id:string prop ->
  ?custom_pages:custom_pages list ->
  ?login_design:login_design list ->
  auth_domain:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
