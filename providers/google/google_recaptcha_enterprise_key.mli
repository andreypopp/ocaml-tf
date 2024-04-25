(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type android_settings

val android_settings :
  ?allow_all_package_names:bool prop ->
  ?allowed_package_names:string prop list ->
  unit ->
  android_settings

type ios_settings

val ios_settings :
  ?allow_all_bundle_ids:bool prop ->
  ?allowed_bundle_ids:string prop list ->
  unit ->
  ios_settings

type testing_options

val testing_options :
  ?testing_challenge:string prop ->
  ?testing_score:float prop ->
  unit ->
  testing_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type waf_settings

val waf_settings :
  waf_feature:string prop ->
  waf_service:string prop ->
  unit ->
  waf_settings

type web_settings

val web_settings :
  ?allow_all_domains:bool prop ->
  ?allow_amp_traffic:bool prop ->
  ?allowed_domains:string prop list ->
  ?challenge_security_preference:string prop ->
  integration_type:string prop ->
  unit ->
  web_settings

type google_recaptcha_enterprise_key

val google_recaptcha_enterprise_key :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?android_settings:android_settings list ->
  ?ios_settings:ios_settings list ->
  ?testing_options:testing_options list ->
  ?timeouts:timeouts ->
  ?waf_settings:waf_settings list ->
  ?web_settings:web_settings list ->
  display_name:string prop ->
  unit ->
  google_recaptcha_enterprise_key

val yojson_of_google_recaptcha_enterprise_key :
  google_recaptcha_enterprise_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?android_settings:android_settings list ->
  ?ios_settings:ios_settings list ->
  ?testing_options:testing_options list ->
  ?timeouts:timeouts ->
  ?waf_settings:waf_settings list ->
  ?web_settings:web_settings list ->
  display_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?android_settings:android_settings list ->
  ?ios_settings:ios_settings list ->
  ?testing_options:testing_options list ->
  ?timeouts:timeouts ->
  ?waf_settings:waf_settings list ->
  ?web_settings:web_settings list ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
