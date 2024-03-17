(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transcribe_vocabulary_filter

type t = private {
  arn : string prop;
  download_uri : string prop;
  id : string prop;
  language_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vocabulary_filter_file_uri : string prop;
  vocabulary_filter_name : string prop;
  words : string list prop;
}

val aws_transcribe_vocabulary_filter :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vocabulary_filter_file_uri:string prop ->
  ?words:string prop list ->
  language_code:string prop ->
  vocabulary_filter_name:string prop ->
  string ->
  t
