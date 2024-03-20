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

type voice_settings

val voice_settings :
  ?engine:string prop ->
  voice_id:string prop ->
  unit ->
  voice_settings

type aws_lexv2models_bot_locale

val aws_lexv2models_bot_locale :
  ?description:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  bot_version:string prop ->
  locale_id:string prop ->
  n_lu_intent_confidence_threshold:float prop ->
  voice_settings:voice_settings list ->
  unit ->
  aws_lexv2models_bot_locale

val yojson_of_aws_lexv2models_bot_locale :
  aws_lexv2models_bot_locale -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_id : string prop;
  n_lu_intent_confidence_threshold : float prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  bot_version:string prop ->
  locale_id:string prop ->
  n_lu_intent_confidence_threshold:float prop ->
  voice_settings:voice_settings list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  bot_version:string prop ->
  locale_id:string prop ->
  n_lu_intent_confidence_threshold:float prop ->
  voice_settings:voice_settings list ->
  string ->
  t Tf_core.resource
