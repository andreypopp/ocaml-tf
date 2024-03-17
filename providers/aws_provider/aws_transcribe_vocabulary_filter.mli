(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_vocabulary_filter

val aws_transcribe_vocabulary_filter :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vocabulary_filter_file_uri:string prop ->
  ?words:string prop list ->
  language_code:string prop ->
  vocabulary_filter_name:string prop ->
  string ->
  unit
