(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_vocabulary__timeouts
type aws_transcribe_vocabulary

val aws_transcribe_vocabulary :
  ?id:string prop ->
  ?phrases:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vocabulary_file_uri:string prop ->
  ?timeouts:aws_transcribe_vocabulary__timeouts ->
  language_code:string prop ->
  vocabulary_name:string prop ->
  string ->
  unit
