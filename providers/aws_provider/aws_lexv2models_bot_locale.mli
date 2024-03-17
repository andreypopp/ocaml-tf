(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lexv2models_bot_locale__timeouts
type aws_lexv2models_bot_locale__voice_settings
type aws_lexv2models_bot_locale

type t = private {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_id : string prop;
  n_lu_intent_confidence_threshold : float prop;
  name : string prop;
}

val aws_lexv2models_bot_locale :
  ?description:string prop ->
  ?name:string prop ->
  ?timeouts:aws_lexv2models_bot_locale__timeouts ->
  bot_id:string prop ->
  bot_version:string prop ->
  locale_id:string prop ->
  n_lu_intent_confidence_threshold:float prop ->
  voice_settings:aws_lexv2models_bot_locale__voice_settings list ->
  string ->
  t
