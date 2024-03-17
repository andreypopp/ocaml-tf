(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_agent__timeouts
type google_dialogflow_agent

val google_dialogflow_agent :
  ?avatar_uri:string ->
  ?classification_threshold:float ->
  ?description:string ->
  ?enable_logging:bool ->
  ?supported_language_codes:string list ->
  ?tier:string ->
  ?timeouts:google_dialogflow_agent__timeouts ->
  default_language_code:string ->
  display_name:string ->
  time_zone:string ->
  string ->
  unit
