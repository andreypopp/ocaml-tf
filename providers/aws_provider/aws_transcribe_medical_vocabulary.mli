(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_medical_vocabulary__timeouts
type aws_transcribe_medical_vocabulary

type t = private {
  arn : string prop;
  download_uri : string prop;
  id : string prop;
  language_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vocabulary_file_uri : string prop;
  vocabulary_name : string prop;
}

val aws_transcribe_medical_vocabulary :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_transcribe_medical_vocabulary__timeouts ->
  language_code:string prop ->
  vocabulary_file_uri:string prop ->
  vocabulary_name:string prop ->
  string ->
  t
