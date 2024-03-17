(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_language_model__input_data_config
type aws_transcribe_language_model__timeouts
type aws_transcribe_language_model

val aws_transcribe_language_model :
  ?tags:(string * string) list ->
  ?timeouts:aws_transcribe_language_model__timeouts ->
  base_model_name:string ->
  language_code:string ->
  model_name:string ->
  input_data_config:
    aws_transcribe_language_model__input_data_config list ->
  string ->
  unit
