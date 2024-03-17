(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_security_settings__audio_export_settings
type google_dialogflow_cx_security_settings__insights_export_settings
type google_dialogflow_cx_security_settings__timeouts
type google_dialogflow_cx_security_settings

val google_dialogflow_cx_security_settings :
  ?deidentify_template:string ->
  ?id:string ->
  ?inspect_template:string ->
  ?project:string ->
  ?purge_data_types:string list ->
  ?redaction_scope:string ->
  ?redaction_strategy:string ->
  ?retention_strategy:string ->
  ?retention_window_days:float ->
  ?timeouts:google_dialogflow_cx_security_settings__timeouts ->
  display_name:string ->
  location:string ->
  audio_export_settings:
    google_dialogflow_cx_security_settings__audio_export_settings
    list ->
  insights_export_settings:
    google_dialogflow_cx_security_settings__insights_export_settings
    list ->
  string ->
  unit
