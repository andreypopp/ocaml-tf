(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_medical_vocabulary__timeouts
type aws_transcribe_medical_vocabulary

val aws_transcribe_medical_vocabulary :
  ?tags:(string * string) list ->
  ?timeouts:aws_transcribe_medical_vocabulary__timeouts ->
  language_code:string ->
  vocabulary_file_uri:string ->
  vocabulary_name:string ->
  string ->
  unit
