(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_application__feature_settings
type google_app_engine_application__iap
type google_app_engine_application__timeouts

type google_app_engine_application__url_dispatch_rule = {
  domain : string prop;  (** domain *)
  path : string prop;  (** path *)
  service : string prop;  (** service *)
}

type google_app_engine_application

type t = private {
  app_id : string prop;
  auth_domain : string prop;
  code_bucket : string prop;
  database_type : string prop;
  default_bucket : string prop;
  default_hostname : string prop;
  gcr_domain : string prop;
  id : string prop;
  location_id : string prop;
  name : string prop;
  project : string prop;
  serving_status : string prop;
  url_dispatch_rule :
    google_app_engine_application__url_dispatch_rule list prop;
}

val google_app_engine_application :
  ?auth_domain:string prop ->
  ?database_type:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?serving_status:string prop ->
  ?timeouts:google_app_engine_application__timeouts ->
  location_id:string prop ->
  feature_settings:
    google_app_engine_application__feature_settings list ->
  iap:google_app_engine_application__iap list ->
  string ->
  t
