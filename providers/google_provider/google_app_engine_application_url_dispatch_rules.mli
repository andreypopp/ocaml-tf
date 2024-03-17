(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_application_url_dispatch_rules__dispatch_rules
type google_app_engine_application_url_dispatch_rules__timeouts
type google_app_engine_application_url_dispatch_rules
type t = private { id : string prop; project : string prop }

val google_app_engine_application_url_dispatch_rules :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:
    google_app_engine_application_url_dispatch_rules__timeouts ->
  dispatch_rules:
    google_app_engine_application_url_dispatch_rules__dispatch_rules
    list ->
  string ->
  t
