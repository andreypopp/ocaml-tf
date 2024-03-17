(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lexv2models_bot_version__timeouts

type aws_lexv2models_bot_version__locale_specification = {
  source_bot_version : string;  (** source_bot_version *)
}
[@@deriving yojson_of]

type aws_lexv2models_bot_version

val aws_lexv2models_bot_version :
  ?description:string ->
  ?timeouts:aws_lexv2models_bot_version__timeouts ->
  bot_id:string ->
  locale_specification:
    (string * aws_lexv2models_bot_version__locale_specification) list ->
  string ->
  unit
