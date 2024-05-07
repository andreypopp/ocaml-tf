(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type url_dispatch_rule = {
  domain : string prop;  (** domain *)
  path : string prop;  (** path *)
  service : string prop;  (** service *)
}

type feature_settings

val feature_settings :
  split_health_checks:bool prop -> unit -> feature_settings

type iap

val iap :
  ?enabled:bool prop ->
  oauth2_client_id:string prop ->
  oauth2_client_secret:string prop ->
  unit ->
  iap

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type google_app_engine_application

val google_app_engine_application :
  ?auth_domain:string prop ->
  ?database_type:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?serving_status:string prop ->
  ?feature_settings:feature_settings list ->
  ?iap:iap list ->
  ?timeouts:timeouts ->
  location_id:string prop ->
  unit ->
  google_app_engine_application

val yojson_of_google_app_engine_application :
  google_app_engine_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  url_dispatch_rule : url_dispatch_rule list prop;
}

val register :
  ?tf_module:tf_module ->
  ?auth_domain:string prop ->
  ?database_type:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?serving_status:string prop ->
  ?feature_settings:feature_settings list ->
  ?iap:iap list ->
  ?timeouts:timeouts ->
  location_id:string prop ->
  string ->
  t

val make :
  ?auth_domain:string prop ->
  ?database_type:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?serving_status:string prop ->
  ?feature_settings:feature_settings list ->
  ?iap:iap list ->
  ?timeouts:timeouts ->
  location_id:string prop ->
  string ->
  t Tf_core.resource
