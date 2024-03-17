(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_recaptcha_enterprise_key__android_settings
type google_recaptcha_enterprise_key__ios_settings
type google_recaptcha_enterprise_key__testing_options
type google_recaptcha_enterprise_key__timeouts
type google_recaptcha_enterprise_key__waf_settings
type google_recaptcha_enterprise_key__web_settings
type google_recaptcha_enterprise_key

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

val google_recaptcha_enterprise_key :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_recaptcha_enterprise_key__timeouts ->
  display_name:string prop ->
  android_settings:
    google_recaptcha_enterprise_key__android_settings list ->
  ios_settings:google_recaptcha_enterprise_key__ios_settings list ->
  testing_options:
    google_recaptcha_enterprise_key__testing_options list ->
  waf_settings:google_recaptcha_enterprise_key__waf_settings list ->
  web_settings:google_recaptcha_enterprise_key__web_settings list ->
  string ->
  t
