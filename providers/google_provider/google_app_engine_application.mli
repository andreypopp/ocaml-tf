(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_application__feature_settings
type google_app_engine_application__iap
type google_app_engine_application__timeouts

type google_app_engine_application__url_dispatch_rule = {
  domain : string;  (** domain *)
  path : string;  (** path *)
  service : string;  (** service *)
}
[@@deriving yojson_of]

type google_app_engine_application

val google_app_engine_application :
  ?timeouts:google_app_engine_application__timeouts ->
  location_id:string ->
  feature_settings:
    google_app_engine_application__feature_settings list ->
  iap:google_app_engine_application__iap list ->
  string ->
  unit
