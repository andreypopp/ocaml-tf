(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type generic_web_service

val generic_web_service :
  ?allowed_ca_certs:string prop list ->
  ?request_headers:string prop Tf_core.assoc ->
  uri:string prop ->
  unit ->
  generic_web_service

type service_directory__generic_web_service

val service_directory__generic_web_service :
  ?allowed_ca_certs:string prop list ->
  ?request_headers:string prop Tf_core.assoc ->
  uri:string prop ->
  unit ->
  service_directory__generic_web_service

type service_directory

val service_directory :
  service:string prop ->
  generic_web_service:service_directory__generic_web_service list ->
  unit ->
  service_directory

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_cx_webhook

val google_dialogflow_cx_webhook :
  ?disabled:bool prop ->
  ?enable_spell_correction:bool prop ->
  ?enable_stackdriver_logging:bool prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?security_settings:string prop ->
  ?timeout:string prop ->
  ?generic_web_service:generic_web_service list ->
  ?service_directory:service_directory list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  unit ->
  google_dialogflow_cx_webhook

val yojson_of_google_dialogflow_cx_webhook :
  google_dialogflow_cx_webhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disabled : bool prop;
  display_name : string prop;
  enable_spell_correction : bool prop;
  enable_stackdriver_logging : bool prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  security_settings : string prop;
  start_flow : string prop;
  timeout : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled:bool prop ->
  ?enable_spell_correction:bool prop ->
  ?enable_stackdriver_logging:bool prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?security_settings:string prop ->
  ?timeout:string prop ->
  ?generic_web_service:generic_web_service list ->
  ?service_directory:service_directory list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t

val make :
  ?disabled:bool prop ->
  ?enable_spell_correction:bool prop ->
  ?enable_stackdriver_logging:bool prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?security_settings:string prop ->
  ?timeout:string prop ->
  ?generic_web_service:generic_web_service list ->
  ?service_directory:service_directory list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
