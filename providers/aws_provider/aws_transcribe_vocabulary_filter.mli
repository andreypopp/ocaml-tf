(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_vocabulary_filter

val aws_transcribe_vocabulary_filter :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vocabulary_filter_file_uri:string ->
  ?words:string list ->
  language_code:string ->
  vocabulary_filter_name:string ->
  string ->
  unit
