(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_transcribe_vocabulary

val aws_transcribe_vocabulary :
  ?id:string prop ->
  ?phrases:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vocabulary_file_uri:string prop ->
  ?timeouts:timeouts ->
  language_code:string prop ->
  vocabulary_name:string prop ->
  unit ->
  aws_transcribe_vocabulary

val yojson_of_aws_transcribe_vocabulary :
  aws_transcribe_vocabulary -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  download_uri : string prop;
  id : string prop;
  language_code : string prop;
  phrases : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vocabulary_file_uri : string prop;
  vocabulary_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?phrases:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vocabulary_file_uri:string prop ->
  ?timeouts:timeouts ->
  language_code:string prop ->
  vocabulary_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?phrases:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vocabulary_file_uri:string prop ->
  ?timeouts:timeouts ->
  language_code:string prop ->
  vocabulary_name:string prop ->
  string ->
  t Tf_core.resource
