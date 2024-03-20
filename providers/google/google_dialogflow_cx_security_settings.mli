(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type audio_export_settings

val audio_export_settings :
  ?audio_export_pattern:string prop ->
  ?audio_format:string prop ->
  ?enable_audio_redaction:bool prop ->
  ?gcs_bucket:string prop ->
  unit ->
  audio_export_settings

type insights_export_settings

val insights_export_settings :
  enable_insights_export:bool prop ->
  unit ->
  insights_export_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_cx_security_settings

val google_dialogflow_cx_security_settings :
  ?deidentify_template:string prop ->
  ?id:string prop ->
  ?inspect_template:string prop ->
  ?project:string prop ->
  ?purge_data_types:string prop list ->
  ?redaction_scope:string prop ->
  ?redaction_strategy:string prop ->
  ?retention_strategy:string prop ->
  ?retention_window_days:float prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  audio_export_settings:audio_export_settings list ->
  insights_export_settings:insights_export_settings list ->
  unit ->
  google_dialogflow_cx_security_settings

val yojson_of_google_dialogflow_cx_security_settings :
  google_dialogflow_cx_security_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  deidentify_template : string prop;
  display_name : string prop;
  id : string prop;
  inspect_template : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  purge_data_types : string list prop;
  redaction_scope : string prop;
  redaction_strategy : string prop;
  retention_strategy : string prop;
  retention_window_days : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?deidentify_template:string prop ->
  ?id:string prop ->
  ?inspect_template:string prop ->
  ?project:string prop ->
  ?purge_data_types:string prop list ->
  ?redaction_scope:string prop ->
  ?redaction_strategy:string prop ->
  ?retention_strategy:string prop ->
  ?retention_window_days:float prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  audio_export_settings:audio_export_settings list ->
  insights_export_settings:insights_export_settings list ->
  string ->
  t

val make :
  ?deidentify_template:string prop ->
  ?id:string prop ->
  ?inspect_template:string prop ->
  ?project:string prop ->
  ?purge_data_types:string prop list ->
  ?redaction_scope:string prop ->
  ?redaction_strategy:string prop ->
  ?retention_strategy:string prop ->
  ?retention_window_days:float prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  audio_export_settings:audio_export_settings list ->
  insights_export_settings:insights_export_settings list ->
  string ->
  t Tf_core.resource
