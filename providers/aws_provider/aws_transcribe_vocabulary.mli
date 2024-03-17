(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_vocabulary__timeouts
type aws_transcribe_vocabulary

val aws_transcribe_vocabulary :
  ?phrases:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_transcribe_vocabulary__timeouts ->
  language_code:string ->
  vocabulary_name:string ->
  string ->
  unit
