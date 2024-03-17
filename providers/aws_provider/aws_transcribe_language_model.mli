(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_language_model__input_data_config
type aws_transcribe_language_model__timeouts
type aws_transcribe_language_model

val aws_transcribe_language_model :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_transcribe_language_model__timeouts ->
  base_model_name:string prop ->
  language_code:string prop ->
  model_name:string prop ->
  input_data_config:
    aws_transcribe_language_model__input_data_config list ->
  string ->
  unit
