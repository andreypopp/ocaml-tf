(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_webhook__generic_web_service

type google_dialogflow_cx_webhook__service_directory__generic_web_service

type google_dialogflow_cx_webhook__service_directory
type google_dialogflow_cx_webhook__timeouts
type google_dialogflow_cx_webhook

val google_dialogflow_cx_webhook :
  ?disabled:bool ->
  ?enable_spell_correction:bool ->
  ?enable_stackdriver_logging:bool ->
  ?parent:string ->
  ?security_settings:string ->
  ?timeout:string ->
  ?timeouts:google_dialogflow_cx_webhook__timeouts ->
  display_name:string ->
  generic_web_service:
    google_dialogflow_cx_webhook__generic_web_service list ->
  service_directory:
    google_dialogflow_cx_webhook__service_directory list ->
  string ->
  unit
