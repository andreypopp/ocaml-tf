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

type aws_transcribe_medical_vocabulary

val aws_transcribe_medical_vocabulary :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  language_code:string prop ->
  vocabulary_file_uri:string prop ->
  vocabulary_name:string prop ->
  unit ->
  aws_transcribe_medical_vocabulary

val yojson_of_aws_transcribe_medical_vocabulary :
  aws_transcribe_medical_vocabulary -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  language_code:string prop ->
  vocabulary_file_uri:string prop ->
  vocabulary_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  language_code:string prop ->
  vocabulary_file_uri:string prop ->
  vocabulary_name:string prop ->
  string ->
  t Tf_core.resource
