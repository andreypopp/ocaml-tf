(** Get a single Theme of a Brand of an Okta Organization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_theme

val okta_theme :
  brand_id:string prop -> theme_id:string prop -> unit -> okta_theme

val yojson_of_okta_theme : okta_theme -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  background_image_url : string prop;
  brand_id : string prop;
  email_template_touch_point_variant : string prop;
  end_user_dashboard_touch_point_variant : string prop;
  error_page_touch_point_variant : string prop;
  favicon_url : string prop;
  id : string prop;
  links : string prop;
  logo_url : string prop;
  primary_color_contrast_hex : string prop;
  primary_color_hex : string prop;
  secondary_color_contrast_hex : string prop;
  secondary_color_hex : string prop;
  sign_in_page_touch_point_variant : string prop;
  theme_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  brand_id:string prop ->
  theme_id:string prop ->
  string ->
  t

val make :
  brand_id:string prop ->
  theme_id:string prop ->
  string ->
  t Tf_core.resource
