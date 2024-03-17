(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lexv2models_bot_locale__timeouts
type aws_lexv2models_bot_locale__voice_settings
type aws_lexv2models_bot_locale

val aws_lexv2models_bot_locale :
  ?description:string ->
  ?timeouts:aws_lexv2models_bot_locale__timeouts ->
  bot_id:string ->
  bot_version:string ->
  locale_id:string ->
  n_lu_intent_confidence_threshold:float ->
  voice_settings:aws_lexv2models_bot_locale__voice_settings list ->
  string ->
  unit
