(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type voices

val voices : unit -> voices

type aws_polly_voices

val aws_polly_voices :
  ?engine:string prop ->
  ?include_additional_language_codes:bool prop ->
  ?language_code:string prop ->
  voices:voices list ->
  unit ->
  aws_polly_voices

val yojson_of_aws_polly_voices : aws_polly_voices -> json

(** RESOURCE REGISTRATION *)

type t = private {
  engine : string prop;
  id : string prop;
  include_additional_language_codes : bool prop;
  language_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?engine:string prop ->
  ?include_additional_language_codes:bool prop ->
  ?language_code:string prop ->
  voices:voices list ->
  string ->
  t

val make :
  ?engine:string prop ->
  ?include_additional_language_codes:bool prop ->
  ?language_code:string prop ->
  voices:voices list ->
  string ->
  t Tf_core.resource
