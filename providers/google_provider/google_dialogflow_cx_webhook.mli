(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_webhook__generic_web_service

type google_dialogflow_cx_webhook__service_directory__generic_web_service

type google_dialogflow_cx_webhook__service_directory
type google_dialogflow_cx_webhook__timeouts
type google_dialogflow_cx_webhook

val google_dialogflow_cx_webhook :
  ?disabled:bool prop ->
  ?enable_spell_correction:bool prop ->
  ?enable_stackdriver_logging:bool prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?security_settings:string prop ->
  ?timeout:string prop ->
  ?timeouts:google_dialogflow_cx_webhook__timeouts ->
  display_name:string prop ->
  generic_web_service:
    google_dialogflow_cx_webhook__generic_web_service list ->
  service_directory:
    google_dialogflow_cx_webhook__service_directory list ->
  string ->
  unit
