(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_settings__audio_export_gcs_destination

val advanced_settings__audio_export_gcs_destination :
  ?uri:string prop ->
  unit ->
  advanced_settings__audio_export_gcs_destination

type advanced_settings__dtmf_settings

val advanced_settings__dtmf_settings :
  ?enabled:bool prop ->
  ?finish_digit:string prop ->
  ?max_digits:float prop ->
  unit ->
  advanced_settings__dtmf_settings

type advanced_settings

val advanced_settings :
  ?audio_export_gcs_destination:
    advanced_settings__audio_export_gcs_destination list ->
  ?dtmf_settings:advanced_settings__dtmf_settings list ->
  unit ->
  advanced_settings

type git_integration_settings__github_settings

val git_integration_settings__github_settings :
  ?access_token:string prop ->
  ?branches:string prop list ->
  ?display_name:string prop ->
  ?repository_uri:string prop ->
  ?tracking_branch:string prop ->
  unit ->
  git_integration_settings__github_settings

type git_integration_settings

val git_integration_settings :
  ?github_settings:git_integration_settings__github_settings list ->
  unit ->
  git_integration_settings

type speech_to_text_settings

val speech_to_text_settings :
  ?enable_speech_adaptation:bool prop ->
  unit ->
  speech_to_text_settings

type text_to_speech_settings

val text_to_speech_settings :
  ?synthesize_speech_configs:string prop ->
  unit ->
  text_to_speech_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?advanced_settings:advanced_settings list ->
  ?git_integration_settings:git_integration_settings list ->
  ?speech_to_text_settings:speech_to_text_settings list ->
  ?text_to_speech_settings:text_to_speech_settings list ->
  ?timeouts:timeouts ->
  default_language_code:string prop ->
  display_name:string prop ->
  location:string prop ->
  time_zone:string prop ->
  unit ->
  google_dialogflow_cx_agent

val yojson_of_google_dialogflow_cx_agent :
  google_dialogflow_cx_agent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  avatar_uri : string prop;
  default_language_code : string prop;
  description : string prop;
  display_name : string prop;
  enable_spell_correction : bool prop;
  enable_stackdriver_logging : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  security_settings : string prop;
  start_flow : string prop;
  supported_language_codes : string list prop;
  time_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?avatar_uri:string prop ->
  ?description:string prop ->
  ?enable_spell_correction:bool prop ->
  ?enable_stackdriver_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?security_settings:string prop ->
  ?supported_language_codes:string prop list ->
  ?advanced_settings:advanced_settings list ->
  ?git_integration_settings:git_integration_settings list ->
  ?speech_to_text_settings:speech_to_text_settings list ->
  ?text_to_speech_settings:text_to_speech_settings list ->
  ?timeouts:timeouts ->
  default_language_code:string prop ->
  display_name:string prop ->
  location:string prop ->
  time_zone:string prop ->
  string ->
  t

val make :
  ?avatar_uri:string prop ->
  ?description:string prop ->
  ?enable_spell_correction:bool prop ->
  ?enable_stackdriver_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?security_settings:string prop ->
  ?supported_language_codes:string prop list ->
  ?advanced_settings:advanced_settings list ->
  ?git_integration_settings:git_integration_settings list ->
  ?speech_to_text_settings:speech_to_text_settings list ->
  ?text_to_speech_settings:text_to_speech_settings list ->
  ?timeouts:timeouts ->
  default_language_code:string prop ->
  display_name:string prop ->
  location:string prop ->
  time_zone:string prop ->
  string ->
  t Tf_core.resource
