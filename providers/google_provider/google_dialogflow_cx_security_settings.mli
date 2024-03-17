(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_security_settings__audio_export_settings
type google_dialogflow_cx_security_settings__insights_export_settings
type google_dialogflow_cx_security_settings__timeouts
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
  ?timeouts:google_dialogflow_cx_security_settings__timeouts ->
  display_name:string prop ->
  location:string prop ->
  audio_export_settings:
    google_dialogflow_cx_security_settings__audio_export_settings
    list ->
  insights_export_settings:
    google_dialogflow_cx_security_settings__insights_export_settings
    list ->
  string ->
  unit
