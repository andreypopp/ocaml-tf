(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_transcribe_vocabulary_filter

val aws_transcribe_vocabulary_filter :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vocabulary_filter_file_uri:string prop ->
  ?words:string prop list ->
  language_code:string prop ->
  vocabulary_filter_name:string prop ->
  unit ->
  aws_transcribe_vocabulary_filter

val yojson_of_aws_transcribe_vocabulary_filter :
  aws_transcribe_vocabulary_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vocabulary_filter_file_uri:string prop ->
  ?words:string prop list ->
  language_code:string prop ->
  vocabulary_filter_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vocabulary_filter_file_uri:string prop ->
  ?words:string prop list ->
  language_code:string prop ->
  vocabulary_filter_name:string prop ->
  string ->
  t Tf_core.resource
