(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_agent__advanced_settings__audio_export_gcs_destination

type google_dialogflow_cx_agent__advanced_settings__dtmf_settings
type google_dialogflow_cx_agent__advanced_settings

type google_dialogflow_cx_agent__git_integration_settings__github_settings

type google_dialogflow_cx_agent__git_integration_settings
type google_dialogflow_cx_agent__speech_to_text_settings
type google_dialogflow_cx_agent__text_to_speech_settings
type google_dialogflow_cx_agent__timeouts
type google_dialogflow_cx_agent

val google_dialogflow_cx_agent :
  ?avatar_uri:string prop ->
  ?description:string prop ->
  ?enable_spell_correction:bool prop ->
  ?enable_stackdriver_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?security_settings:string prop ->
  ?supported_language_codes:string prop list ->
  ?timeouts:google_dialogflow_cx_agent__timeouts ->
  default_language_code:string prop ->
  display_name:string prop ->
  location:string prop ->
  time_zone:string prop ->
  advanced_settings:
    google_dialogflow_cx_agent__advanced_settings list ->
  git_integration_settings:
    google_dialogflow_cx_agent__git_integration_settings list ->
  speech_to_text_settings:
    google_dialogflow_cx_agent__speech_to_text_settings list ->
  text_to_speech_settings:
    google_dialogflow_cx_agent__text_to_speech_settings list ->
  string ->
  unit
