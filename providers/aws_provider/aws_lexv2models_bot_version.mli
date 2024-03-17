(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lexv2models_bot_version__timeouts

type aws_lexv2models_bot_version__locale_specification = {
  source_bot_version : string prop;  (** source_bot_version *)
}

type aws_lexv2models_bot_version

val aws_lexv2models_bot_version :
  ?bot_version:string prop ->
  ?description:string prop ->
  ?timeouts:aws_lexv2models_bot_version__timeouts ->
  bot_id:string prop ->
  locale_specification:
    (string * aws_lexv2models_bot_version__locale_specification) list ->
  string ->
  unit
