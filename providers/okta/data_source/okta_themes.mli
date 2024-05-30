(** Get Themes of a Brand of an Okta Organization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type themes = {
  background_image_url : string prop;  (** background_image_url *)
  email_template_touch_point_variant : string prop;
      (** email_template_touch_point_variant *)
  end_user_dashboard_touch_point_variant : string prop;
      (** end_user_dashboard_touch_point_variant *)
  error_page_touch_point_variant : string prop;
      (** error_page_touch_point_variant *)
  favicon_url : string prop;  (** favicon_url *)
  id : string prop;  (** id *)
  links : string prop;  (** links *)
  logo_url : string prop;  (** logo_url *)
  primary_color_contrast_hex : string prop;
      (** primary_color_contrast_hex *)
  primary_color_hex : string prop;  (** primary_color_hex *)
  secondary_color_contrast_hex : string prop;
      (** secondary_color_contrast_hex *)
  secondary_color_hex : string prop;  (** secondary_color_hex *)
  sign_in_page_touch_point_variant : string prop;
      (** sign_in_page_touch_point_variant *)
}

type okta_themes

val okta_themes :
  ?id:string prop -> brand_id:string prop -> unit -> okta_themes

val yojson_of_okta_themes : okta_themes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand_id : string prop;
  id : string prop;
  themes : themes list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  brand_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  brand_id:string prop ->
  string ->
  t Tf_core.resource
