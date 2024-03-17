(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_service_network_settings__network_settings
type google_app_engine_service_network_settings__timeouts
type google_app_engine_service_network_settings

val google_app_engine_service_network_settings :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_app_engine_service_network_settings__timeouts ->
  service:string prop ->
  network_settings:
    google_app_engine_service_network_settings__network_settings list ->
  string ->
  unit
