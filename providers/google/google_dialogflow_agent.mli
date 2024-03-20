(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_agent

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
  ?timeouts:timeouts ->
  default_language_code:string prop ->
  display_name:string prop ->
  time_zone:string prop ->
  unit ->
  google_dialogflow_agent

val yojson_of_google_dialogflow_agent :
  google_dialogflow_agent -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  default_language_code:string prop ->
  display_name:string prop ->
  time_zone:string prop ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  default_language_code:string prop ->
  display_name:string prop ->
  time_zone:string prop ->
  string ->
  t Tf_core.resource
