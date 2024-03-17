(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_vocabulary__timeouts
type aws_transcribe_vocabulary

val aws_transcribe_vocabulary :
  ?id:string ->
  ?phrases:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vocabulary_file_uri:string ->
  ?timeouts:aws_transcribe_vocabulary__timeouts ->
  language_code:string ->
  vocabulary_name:string ->
  string ->
  unit
