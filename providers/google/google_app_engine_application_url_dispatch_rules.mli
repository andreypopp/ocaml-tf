(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dispatch_rules

val dispatch_rules :
  ?domain:string prop ->
  path:string prop ->
  service:string prop ->
  unit ->
  dispatch_rules

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_app_engine_application_url_dispatch_rules

val google_app_engine_application_url_dispatch_rules :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dispatch_rules:dispatch_rules list ->
  unit ->
  google_app_engine_application_url_dispatch_rules

val yojson_of_google_app_engine_application_url_dispatch_rules :
  google_app_engine_application_url_dispatch_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dispatch_rules:dispatch_rules list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dispatch_rules:dispatch_rules list ->
  string ->
  t Tf_core.resource
