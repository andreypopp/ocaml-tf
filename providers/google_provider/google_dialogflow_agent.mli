(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_agent__timeouts
type google_dialogflow_agent

type t = private {
  api_version : string prop;
  avatar_uri : string prop;
  avatar_uri_backend : string prop;
  classification_threshold : float prop;
  default_language_code : string prop;
  description : string prop;
  display_name : string prop;
  enable_logging : bool prop;
  id : string prop;
  match_mode : string prop;
  project : string prop;
  supported_language_codes : string list prop;
  tier : string prop;
  time_zone : string prop;
}

val google_dialogflow_agent :
  ?api_version:string prop ->
  ?avatar_uri:string prop ->
  ?classification_threshold:float prop ->
  ?description:string prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?match_mode:string prop ->
  ?project:string prop ->
  ?supported_language_codes:string prop list ->
  ?tier:string prop ->
  ?timeouts:google_dialogflow_agent__timeouts ->
  default_language_code:string prop ->
  display_name:string prop ->
  time_zone:string prop ->
  string ->
  t
